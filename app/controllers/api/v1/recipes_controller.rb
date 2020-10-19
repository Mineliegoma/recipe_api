class Api::V1::RecipesController < ApplicationController
 def index
 recipe = Recipe.all
 render json: recipe
end








end
