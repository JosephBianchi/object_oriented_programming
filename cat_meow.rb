class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def name
    @name
  end

  def preferred_food
    @preferred_food
  end

  def meal_time_calc
    time = 0
    if @meal_time > 12
      time = @meal_time - 12
      return "#{time}am"


    else
      time = @meal_time
      return "#{time}pm"
    end
end





  def meow
    "I'm #{@name} my favorite food is #{@preferred_food}. Also, i usually eat around #{meal_time_calc}"
  end

end

sniffy = Cat.new("sniffy", "chocolate", 14)
charlie = Cat.new("charlie", "cake", 7)
ron = Cat. new("ron", "coke", 1)

p sniffy.meow
