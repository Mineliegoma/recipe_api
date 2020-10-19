class Api::V1::IngredientsController < ApplicationController
def index
 ingredient = Ingredient.all
 render json: ingredient
end

end
