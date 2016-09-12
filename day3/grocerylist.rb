# Declareing variabeles
@list_contents = Array.new
@list_name = ""
@item_name = ""
@item_amount = 0
@item = {}
@another_item = true

# Helper Methods

def aquire_list_name
  puts "What is the list name?"
  @list_name = gets.chomp
  print @list_name
end

def begin_addingitems_message
  puts "Great! let's add some items to #{@list_name}"
end

def aquire_item_name
  puts "What is the item called?"
  @item_name = gets.chomp
end

def aquire_item_amount
  puts "How many of those items do you want?"
  @item_amount = gets.chomp.to_i
end

def create_item_with_user_input
  @item = Hash.new
  @item[:name] = @item_name
  @item[:amount] = @item_amount
end

def add_another_item_y_or_n
  puts "Do you want to add another item? (y/n)"
  continue = gets.chomp.downcase
  if continue == "n"
    @another_item = false
  end
end

def divider
  puts "-" * 50
end

def print_completed_list
  puts "Here is your list!"
  puts "List: #{@list_name}"
  divider
  @list_contents.each do |content|
    puts "Item: #{content[:name]} \t\t Quantity: #{content[:amount]}"
  end
  divider
end

#Programflow

aquire_list_name
begin_addingitems_message
while @another_item == true
  aquire_item_name
  aquire_item_amount
  create_item_with_user_input
  @list_contents << @item
  add_another_item_y_or_n
end
print_completed_list
