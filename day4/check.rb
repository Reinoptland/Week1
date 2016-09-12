class Check
  def initialize
    @check = Array.new
  end
  def add(item)
    @check << item
  end
  def check
    @check
  end
  def calculate_total
    sum = 0
    @check.each do |item|
      sum += item.price
    end
    p "Thank you for eating at Leorio's your bill is #{sum} euro"
  end
end
