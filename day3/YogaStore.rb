@products = [
  { reference_number: 31, name: "Super Lite Mat \t", price: 10 },
  { reference_number: 32, name: "Power Mat\t", price: 20 },
  { reference_number: 33, name: "Block \t\t", price: 30 },
  { reference_number: 34, name: "Meditation cushion", price: 30 },
  { reference_number: 35, name: "The best T-shirt", price: 200 },
  { reference_number: 36, name: "The cutest yoga pants", price: 300 },
  { reference_number: 37, name: "Bring Yoga To Life", price: 30 },
  { reference_number: 38, name: "Light On Yoga \t", price: 10 }
]

@customerfinished = false
@shoppingcart = []



def make_purchase
  puts "What would you like to buy? (select by ref#)"
  ref_purchase = gets.chomp.to_i

  @products.each do |product|
    if product[:reference_number] == ref_purchase
      @shoppingcart << product
    end
  end
end

def iscustomerfinished
  puts "Continue shopping? (y/n)"
  continue = gets.chomp
  if continue == "n"
    @customerfinished = true
  end
end


def print_catalogue
  puts "Welcom to the Treehugger Yogastore!"
  puts "*" * 60
  puts "Product             \t\t price \t\t ref#"

  @products.each do |product|
    puts "#{product[:name]} \t\t #{product[:price]} eur  \t #{product[:reference_number]}"
  end

  puts "*" * 60
end

#Programflow

print_catalogue

while @customerfinished == false
  make_purchase
  iscustomerfinished
end

puts @shoppingcart
