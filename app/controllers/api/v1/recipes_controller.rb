class Api::V1::RecipesController < ApplicationController
 def index
 recipe = Recipe.all
 render json: recipe
end
def show
        recipe = Recipe.find_by(id: params[:id])
        if recipe
            render json: recipe.to_json(:include => {
                :ingredients => {:except => [:created_at, :updated_at]}
            }, :except => [:created_at,:updated_at])
        else
            render json: { message: 'recipe not found' }
        end
    end


private 
  def recipe_params
   params.require(:recipe).permit(:title, :image, :readyInMinutes)

  end






end
