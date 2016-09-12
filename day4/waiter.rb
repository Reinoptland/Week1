require './check'

class Waiter

  def initialize(menu, kitchen, check)
    @menu = menu
    @kitchen = kitchen
    @check = check
    @serving = true
  end

  def greet_guest
    p "Welcome to Leorio's!"

  end

  def serve_guests
    p "How can I help you today?"
    p "1. Would you like something to drink?"
    p "2. Would you like to order a pizza?"
    p "3. Would you like to leave?"

    take_order(gets.chomp.to_i)
  end

  def take_order(order_number)
    case order_number
    when 1
      p "Let me show you our selection of drinks"
    when 2
      p "Let me get the menu"
      list_menu
      order_food(gets.chomp.to_i)
    when 3
      p "I can't let you leave..."
      @serving = false
      @check.calculate_total
    else
      p "I don't really understand..."
    end
  end

  def list_menu
    @menu.contents.each_with_index do |dish, index|
      p "#{index}. #{dish.name}"
    end
  end

  def order_food(choice)
    if orderexists?(choice)
      dish = @menu.contents[ choice ]
        if @kitchen.order(dish)
          p "Dish is on its way"
          @check.add(dish)
        else
          p "Sorry this dish is not available"
        end
    else
      p "I'm sorry but we don't serve that here.."
    end
  end

  def serving?
    return @serving
  end

  def orderexists?(choice)
    if (choice > @menu.contents.length || !(choice.class == Fixnum))
      false
    else
      true
    end
  end

end
