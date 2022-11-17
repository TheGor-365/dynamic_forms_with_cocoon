class RecipesController < ApplicationController
  def new
    @recipe = Recipe.new
    @recipe_ingredients = @recipe.recipe_ingredients.build
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, recipe_ingredients_attributes: [:id, :ingredient_id, :quantity, :_destroy])
  end
end
