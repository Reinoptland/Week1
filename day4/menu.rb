require './dish'
require './ingredients'

class Menu
  def initialize
    @menu = []
    @menu << Dish.new("Tonno", [
        Ingredient.new(Ingredient::TOMATO, 3),
        Ingredient.new(Ingredient::DOUGH, 0.25),
        Ingredient.new(Ingredient::MOZZARELLA, 0.2)
      ], 5)
    @menu << Dish.new("Deep Dish", [
        Ingredient.new(Ingredient::TOMATO, 3),
        Ingredient.new(Ingredient::DOUGH, 0.25),
        Ingredient.new(Ingredient::MOZZARELLA, 0.2),
        Ingredient.new(Ingredient::ANCHOVIES, 0.05)
      ], 8)
    @menu << Dish.new("NY Style", [
        Ingredient.new(Ingredient::TOMATO, 3),
        Ingredient.new(Ingredient::DOUGH, 0.25),
        Ingredient.new(Ingredient::MOZZARELLA, 0.2),
        Ingredient.new(Ingredient::PEPERONI, 0.1)
      ], 6)
  end

  def contents
    @menu
  end
end
