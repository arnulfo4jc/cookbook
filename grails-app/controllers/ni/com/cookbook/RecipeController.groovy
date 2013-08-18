package ni.com.cookbook

class RecipeController {

	static defaultAction = "list"
	static allowedMethods = [
		list:"GET",
		delete:"GET"
	]

    def list() {
    	def recipes
    	def role = session?.user.role

    	if (role == "admin" || "collaborator") {
    		recipes = Recipe.list()
    	} else {
    		recipes = Recipe.byUser(session.user).list(params)
    	}

    	[recipes:recipes]
    }

    def delete(Integer id) {
    	def recipe = Recipe.findByUserAndId(session?.user, id)

    	if (!recipe) {
    		response.sendError 404
    	}

    	recipe.delete()
    	flash.message = "Reseta borrada"

    	redirect action:"list"
    }

}
