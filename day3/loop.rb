# integer = 0
#
# loop do
#   integer += 2
#   puts integer
#   if integer == 10
#     break
#   end
# end

# integer = 0
#
# loop do
#   integer += 2
#   if integer == 4
#     next
#   end
#   puts integer
#   if integer == 10
#     break
#   end
# end

# ingredients = ""
#
# loop do
#   puts "Got all ingredients you need? (Y/N)"
#   ingredients = gets.chomp.upcase
#   if ingredients == "Y"
#     puts "you're ready to begin!"
#     break
#   elsif ingredients == "N"
#     puts "gather everything you need"
#   else
#     puts "input invalid"
#   end
# end

# eggs = 0
#
# while eggs < 6
#   eggs += 1
#   puts "break egg #{eggs}"
# end
#

# puts "Enter number from which you want to start the countdown"
# counter = gets.chomp.to_i
#
# while counter > -1
#   puts counter
#   counter -= 1
# end

# fruits = ["apples", "oranges", "pears", "apricots"]
#
# for fruit in fruits
#   puts fruit
# end

# for counter in 1..6
#   puts "Break egg #{counter}"
# end

# puts "Please enter a number"
# number = gets.chomp.to_i
#
# for i in number.downto(0)
#   puts i
# end

# fruits = ["apples", "oranges", "pears", "apricots"]
#
# fruits.each do |fruit|
#   puts "I love: #{fruit}"
# end

# numbers = []
# counters = [1,2,3,4,5]
#
# counters.each do |number|
#   puts "Adding #{number} to the list"
#   numbers << number
# end
#
# numbers.each do |number|
#   puts "Number was: #{number}"
# end

# (1..5).each do |number|
#   puts "Number was: #{number}"
# end

# fruits = ["apples", "oranges", "pears", "apricots"]
#
# fruits.each_with_index { |fruit, index|
#   puts "#{fruit} = #{index + 1}"
# }

friends = [
  {name: "Christiaan", occupation: "Junior Developer", city: "Amstelveen"},
  {name: "Willemijn", occupation: "Team Leader", city: "Amsterdam"},
  {name: "Timmo", occupation: "Poker Pro", city: "Amsterdam"},
]

# friends.each do |friend|
#   puts "#{friend[:name]} lives in #{friend[:city]} and works as a #{friend[:occupation]}"
# end

buddy = {name: "Christiaan", occupation: "Junior Developer", city: "Amstelveen"}

buddy.each_key {|key| puts key}
buddy.each_value {|value| puts value}
