require './waiter'
require './menu'
require './kitchen'


menu = Menu.new
kitchen = Kitchen.new
check = Check.new
waiter = Waiter.new(menu, kitchen, check)


waiter.greet_guest
while(waiter.serving?) do
  waiter.serve_guests
end





# Save progress
