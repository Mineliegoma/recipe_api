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
# ingredients = recipes["analyzedInstructions"]["steps"]["step"]
recipes.each do |recipe_hash| 
recipe_hash["title"]
recipe_hash["servings"]
recipe_hash["image"]
recipe_hash["summary"]
recipe_hash["readyInMinutes"]

  recipe = Recipe.create!(title: recipe_hash["title"],image: recipe_hash["image"],readyInMinutes: recipe_hash["readyInMinutes"], servings: recipe_hash["servings"], summary: recipe_hash["summary"])
end
 







puts Recipe.count
 binding.pry
0
