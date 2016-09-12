computerno = rand(1...100)
attempts = 10

while attempts > 0
  puts "\n Make a guess!  "
  guess = gets.chomp.to_i
  attempts -= 1
  if guess > computerno
    print "lower!"
  elsif guess < computerno
    print "higher!"
  else
    print "You got it!"
    break
  end
  print " #{attempts} attempts left!"
end
