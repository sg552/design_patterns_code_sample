class Coffee
  def cost
    1.0
  end
end

coffee = Coffee.new
puts "origin Coffee: #{coffee.cost}"

class CoffeeDecorator
  def initialize(coffee)
    @decorated_coffee = coffee
  end
end
class CoffeeWithSugar < CoffeeDecorator
  def cost
    @decorated_coffee.cost + 0.5
  end
end
class CoffeeWithMilk < CoffeeDecorator
  def cost
    @decorated_coffee.cost + 0.3
  end
end
puts "with sugar: #{CoffeeWithSugar.new(coffee).cost}"
puts "with double sugar: #{CoffeeWithSugar.new(CoffeeWithSugar.new(coffee)).cost}"
puts "with milk: #{CoffeeWithMilk.new(coffee).cost}"
puts "with milk then sugar: #{CoffeeWithSugar.new(CoffeeWithMilk.new(coffee)).cost}"


