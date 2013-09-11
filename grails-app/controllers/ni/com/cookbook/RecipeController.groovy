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

    def createFlow = {
    	init {
    		action {
    			[recipe:new Recipe(params), user:session?.user]
    		}

    		on("success").to "createRecipe"
    	}

    	createRecipe {
    		on("create") {
    			def recipe = new Recipe(
    				name:params.name,
    				type:params?.type,
    				serve:params.int("serve"),
    				occation:params?.occation,
                    method:params?.method,
    				user:flow.user
    			)

    			if (!recipe.save()) {
    				flow.recipe = recipe
    				return error()
    			}

                [recipe:recipe]

   			}.to "ingredients"
    	}

    	ingredients {
            on("addIngredient") {
                //check in params there is a ingredinet key with value
                if (!params?.ingredient) {
                    return error()
                }

                //check if there are ingredients whit this name
                if (flow?.recipe?.ingredients?.contains(params.ingredient)) {
                    return error()
                }

                flow.recipe.addToIngredients(params.ingredient)
                [ingredients:flow.recipe.ingredients]
            }.to "ingredients"

            on("deleteIngredient") {
                flow.recipe.removeFromIngredients(params?.ingredient)
            }.to("ingredients")

            on("deleteRecipe"){
                flow.recipe.delete()
            }.to "done"

            on("done").to "done"
    	}

    	done {
    		redirect controller:"recipe", action:"list"
    	}
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
