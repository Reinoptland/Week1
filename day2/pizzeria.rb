def pizzas
[
  {type: "Pepperoni", price: 4},
  {type: "Tonno", price: 6},
  {type: "NYstyle", price: 5},
  {type: "Hawai", price: 9}
]
end

def print_menu(menu_content)
  puts "           Menu"
  puts "--- Pizza's     Price ---"
  puts "1.) #{menu_content[0][:type]}   -   #{menu_content[0][:price]} euro's"
  puts "2.) #{menu_content[1][:type]}       -   #{menu_content[1][:price]} euro's"
  puts "3.) #{menu_content[2][:type]}     -   #{menu_content[2][:price]} euro's"
  puts "4.) #{menu_content[3][:type]}       -   #{menu_content[3][:price]} euro's"
end

def greeting
  puts "Welcome to Leorio's!"
end

def ask_customer_name
  puts "What is your name?"
  name = gets.chomp
  name
end

def ask_customer_order
  puts "Please give us the number of the pizza you would like to order"
  puts "(e.g. for pepperoni select 1)"
  order_number = gets.chomp.to_i
  order_number -= 1
  order_number
end

def ask_order_amount
  puts "How many pizza's would you like?"
  order_amount = gets.chomp.to_i
  order_amount
end

def calculate_order_price(order, amount, menu_content)
  price = (menu_content[order][:price] * amount)
  if price < 10
    price += 2.5
  elsif price > 20
    price = price * 0.9
  else
    price
  end
end

greeting
customername = ask_customer_name
print_menu(pizzas)
customer_order = ask_customer_order
customer_order_amount = ask_order_amount
total_order_price = calculate_order_price(customer_order, customer_order_amount, pizzas)
print total_order_price
