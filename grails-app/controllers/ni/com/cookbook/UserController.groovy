package ni.com.cookbook
import org.springframework.web.context.request.RequestContextHolder as RCH

class UserController {

	static defaultAction = "login"
	static allowedMethods = [
		list:"GET"
	]

    def index() {
    	
    }

    def login(){}

    def logout() {
    	session.user = null
    	redirect(action:'login')
    }

    def create(){
    	[userInstance: new User(params)]
    }

    def save(){
    	def userInstance = new User(params)
    	if (!userInstance.save()) {
    		flash.message="errors"
    		render(view:"create", model:[userInstance:userInstance])
    		return false
    	}

    	redirect(action:"login")
    }


    def authenticate() {
        def userInstance = User.findByEmailAndPasswordAndEnable(params.email, params.password, true)

    	if(!userInstance) {
            flash.message = message(code:'ni.com.cookbook.error')
    		redirect(action:'login')
    		return false
    	}

        session.user = userInstance
        redirect(controller:"recipe", action:"list")
	}

    def profile(changepasswordCommand cmd){
        String flag = 'false'
        
        if (request.post) {
            switch(params.flag) {
                case 'changepassword':
                    if (cmd.hasErrors()) {
                        render(view:"profile", model:[cmd:cmd])
                        flash.message="errors"
                        return false
                    }

                    def userInstance = cmd.updatePassword()
            
                    if (userInstance.save(flush:true)) {
                        session.user = userInstance
                        flash.message="su contrasena ha sido cambiada correctamente"
                        redirect(action:"profile", model:[userInstance:userInstance])
                    }else{
                        flash.message="errors"
                    }   
                break

                case 'personaldata':
                    def user = User.findByEmail(session?.user?.email)
                         
                    if(!params.fullName.isEmpty()){
                        user.properties['fullName'] = params
                        flag = 'true'
                    } 
                    if (!params.email.isEmpty()) {
                        user.properties['email'] = params
                        flag = 'true'
                    }

                    if (!params.avatar.isEmpty()) {
                       user.properties['avatar'] = params
                       flag = 'true'
                    }

                    switch(flag) {
                        case 'true':
                            if(user.save(flush:true)){
                                session.user = user
                                flash.message="Sus datos han sido corregidos correctamente"
                                render(view:"profile",model:[userInstance:user])
                            }else{
                                render(view:"profile", model:[cmd:user])
                                flash.message="errors"
                                return false
                            }
                        break
                        case 'false':
                            [userInstance:user]
                        break
                    }
                     
                break
            }
            
            
        }else{
            [userInstance:session?.user]
        }

    }

    def renderUserAvatar(){
        def userInstance

        userInstance = User.get(params.id)
        response.setContentLength(userInstance.avatar.length)
        response.outputStream.write(userInstance.avatar)
    }

}

class changepasswordCommand {
    String currentpassword
    String password
    String confirmpassword
        
    static constraints = {
        importFrom User
        def session = RCH.requestAttributes.session
        
        currentpassword blank:false, validator: {currentpass ->
            currentpass == session?.user?.password
        }

        confirmpassword blank:false, validator: {confirmpass, user ->
            confirmpass == user.password
        }
    } 

    User updatePassword() {
        def session = RCH.requestAttributes.session
        def user = User.findByEmail(session?.user?.email)

        if (user) {
            user.properties["password"] = password
        }

        user
    }
}