@products = [
  { reference_number: 31, name: "Super Lite Mat", price: 10 },
  { reference_number: 32, name: "Power Mat", price: 20 },
  { reference_number: 33, name: "Block", price: 30 },
  { reference_number: 34, name: "Meditation cushion", price: 30 },
  { reference_number: 35, name: "The best T-shirt", price: 200 },
  { reference_number: 36, name: "The cutest yoga pants", price: 300 },
  { reference_number: 37, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 38, name: "Light On Yoga", price: 10 }
]

shoppingcart = []

puts "Welcom to the Treehugger Yogastore!"

puts "*" * 60
puts "Product             \t\t price \t\t ref#"
@products.each do |product|
  puts "#{product[:name]} \t\t #{product[:price]} eur  \t #{product[:reference_number]}"
end
puts "*" * 60

puts "What would you like to buy? (select by ref#)"
ref_purchase = gets.chomp.to_i


# purchase = @products.select { |product| product[:reference_number] == ref_purchase}
# shoppingcart << purchase

purchase = @products.each do |product|
  product.select{ |product| product[:reference_number] == ref_purchase}
end
shoppingcart << purchase

puts purchase.class

# puts shoppingcart
# puts shoppingcart[0].class

# shoppingcart.each do |item|
#   puts item[0]
# end
