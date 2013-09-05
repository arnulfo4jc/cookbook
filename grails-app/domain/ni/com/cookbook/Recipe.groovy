package ni.com.cookbook

class Recipe implements Serializable {

    String name
    String type
    byte[] image
    Integer vote = 0
    Integer serve
    String occation
    String method
    boolean enable

	Date dateCreated
	Date lastUpdated

    static constraints = {
        name blank:false, maxSize:70
        type inList:["Comida", "Bebida", "Postre", "Dulce"]
        image nullable:true, maxSize:250000
        vote min:0
        serve blank:false, min:1
        occation inList:["Semana Santa", "Navidad", "Dia de los muertos"], maxSize:255
        method blank:false
    }

    static namedQueries = {
        byUser { user ->
            eq "user", user
        }

        byRole { role ->
            eq "role", role
        }
    }

    static mapping = {
    	version false
    }

    String toString() {
        name
    }

    static belongsTo = [user:User]
    static hasMany = [alias:String, ingredients:Ingredient]

}
