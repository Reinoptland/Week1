#Methods

def record_user_name
  name = gets.chomp
end

def record_user_age
  age = gets.chomp.to_i
end

def record_user_gender
  gender = gets.chomp
end

def determine_salutation(gender)
  if gender == "f"
      "Ms."
  elsif gender == "m"
      "Mr."
  else
      "Attack Helicopter"
  end
end

def calculate_which_year_age_100(age)
  100 - age + 2016
end

# Program Flow

puts "What's your name?"
user_name = record_user_name
puts user_name

puts "How old are you?"
user_age = record_user_age
puts "#{user_age} years"

puts "What's your gender? (m/f)"
user_gender = record_user_gender
puts user_gender

salutation = determine_salutation(user_gender)
which_year_100 = calculate_which_year_age_100(user_age)

puts "Hello there #{salutation} #{user_name}! You will be 100 in the year #{which_year_100}"
