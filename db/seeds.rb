# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie

 require 'rest-client'
 require 'json'
 require 'dotenv'
 require 'pry'
Dotenv.load



Recipe.destroy_all
Ingredient.destroy_all

# recipes
# recipe= []
key= ENV["API_KEY"]

 result = RestClient.get("https://api.spoonacular.com/recipes/random?apiKey=#{key}&number=100")
list= JSON.parse(result.body)
recipes= list["recipes"]

 # ingredient= list["recipes"]["analyzedInstructions"]
# ingredients = recipes["analyzedInstructions"]["steps"]["step"]
recipes.each do |recipe_hash| 
recipe_hash["title"]
recipe_hash["servings"]
recipe_hash["image"]
recipe_hash["summary"]
recipe_hash["readyInMinutes"]
  recipe = Recipe.create!(title: recipe_hash["title"],image: recipe_hash["image"],readyInMinutes: recipe_hash["readyInMinutes"], servings: recipe_hash["servings"], summary: recipe_hash["summary"])
  recipe_hash["analyzedInstructions"].each do |ingredient_hash|
   ingredient_hash["steps"].each do |a_ingredient|
    a_ingredient['ingredients'].each do |ingr|
     ingr["name"]
  # interate inside steps
   ingredient = Ingredient.create!(epices: ingr["name"], recipe_id: recipe.id)
    end
   end
  end
end

#string = ["chicken", "pepper","cheese","parmeson"]
# def usedIngredients(ing)

  
# end

# result_1 = RestClient.get("https://api.spoonacular.com/recipes/findByIngredients?ingredients=#{@@usedIngredients}&apiKey=#{key}")
# list_1 = JSON.parse(result_1.body)
# list_1.each do ||
# list_1.each do |ingredients|
#  ingredients["title"]
#  ingredients["usedIngredients"]
#  ingredients["missedIngredients"]
#  ingredients["image"]
#  search = Search.

# end 



# def IngredientSearch(usedIngredients)
 
# result_1 = RestClient.get("https://api.spoonacular.com/recipes/findByIngredients?ingredients=#{usedIngredients}&apiKey=#{KEY}")
# list_1 = JSON.parse(result_1.body)


# end
# chicken_list= IngredientSearch("egg, chicken")
# beef_list= IngredientSearch("beef, pepper")

# put a method into a model
# figure if class or instance .. 
# front end to send infos to my backend (search bar or submit  input)
# need a routes // controller (method that defines what the search information will do)
# controller called your model mehtod and use a variable to receive the result.
#send the variable to the frontend , receive it and render it 

 







puts Recipe.count
puts Ingredient.count
  # binding.pry
0
