package ni.com.cookbook

class User implements Serializable {

    String email
    String fullName
    String password
    String role = "user"
    byte[] avatar
    boolean enable
    Date dateCreated
	Date lastUpdated

    static constraints = {
        avatar nullable:true, maxSize:250000
        email blank:false, email:true, unique:true
        fullName nullable:true, maxSize:50
        password blank:false
        role inList:["admin", "user", "collaborator"]
    }

    def beforeInsert() {
        //password = password.encodeAsSHA1()
    }

    static namedQueries = {

    }

    static mapping = {
    	version false
    }

    String toString() {

    }

    static hasMany = [recipes:Recipe]
}
