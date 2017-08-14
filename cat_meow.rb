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

  def meal_time
    @meal_time
  end

  def meow
    "I'm #{@name} my favorite food is #{@preferred_food}. Also, i usually eat around #{@meal_time}"
  end

end

sniffy = Cat.new("sniffy", "chocolate", 6)
charlie = Cat.new("charlie", "cake", 7)
ron = Cat. new("ron", "coke", 1)

p sniffy.meow
