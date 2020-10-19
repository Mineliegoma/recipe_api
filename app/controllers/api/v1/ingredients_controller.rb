class Api::V1::IngredientsController < ApplicationController
     def index
      ingredient = Ingredient.all
      render json: ingredient
     end
     def show
         ingredient= Ingredient.find(params[:id])
         render json: Ingredient
       end 
  

  


      private 
        def ingredients_params
         params.require(:ingredient).permit(:epices, :recipe_id)

        end


end
