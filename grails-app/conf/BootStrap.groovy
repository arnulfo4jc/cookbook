import ni.com.cookbook.*
import grails.util.Environment
class BootStrap {

    def init = { servletContext ->
    	switch(Environment.current) {
    		case Environment.DEVELOPMENT:
        		def jose = new User(
        			email:'jose@gmail.com',
        			password:'1234',
        			fullName:'Jose Torrez',
        			role:'admin',
                    enable:'true'
        			)

        		if(!jose.save()) {
        			jose.errors.allErrors.each {
        				print it
        			}
        		}

        		def arrozEnLeche = new Recipe(
        			name:'Arroz en leche',
        			type:'Comida',
        			serve:5,
        			occation:'Semana Santa',
        			method:'El arroz en leche se prepara mesclando leche con ...'
        			)

        		jose.addToRecipes(arrozEnLeche)

        		if (!arrozEnLeche.save()) {
        			arrozEnLeche.errors.allErrors.each{
        				print it
        			}
        		}

        		arrozEnLeche.addToAlias("ArrozAlahorse")
    		break
    	}
    }

    def destroy = {
    }
}
