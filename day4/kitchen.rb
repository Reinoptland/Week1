require "./storage"

class Kitchen
  def initialize
    @storage = Storage.new
  end

  def order(dish)
    p "KITCHEN: Order recieved for #{dish.name}"
    p "I'm gonna need some:"

    dish.ingredients.each do |ingredient|
      p "#{ingredient.amount} - #{ingredient.name}"
    end

    @storage.fetch(dish.ingredients)
  end

  def order_food(choice)
    dish = @menu.contents[ choice ]
    @kitchen.order(dish)
  end
end
