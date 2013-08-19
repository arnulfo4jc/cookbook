package ni.com.cookbook

class Ingredient implements Serializable {

    String mAndQ 
    String name
    Date dateCreated
	Date lastUpdated

    static constraints = {
        mAndQ blank:false
        name blank:false
    }

    static namedQueries = {

    }

    static mapping = {
    	version false
    }

    String toString() {

    }

    static belongsTo = [recipe:Recipe]
}
