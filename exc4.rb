class Paperboy

  def initialize(name)
    @name = name
    @experience = 0
    @earnings = 0
  end

  def name
    @name
  end

  def earnings
    @earnings
  end

  def quota
  50.0 + (@experience / 2.0)
  end

  def deliver(start_adress, end_adress)
    delivered = 0
    delivered = (end_adress.to_f - start_adress.to_f + 1.00)
    @earnings += mulla(delivered)
    @experience += delivered


  end

  def mulla(num_houses)
    if num_houses == quota
      return quota * 0.25
    elsif num_houses > quota
      return (quota * 0.25) + ((num_houses - quota) * 0.50)
    else
      return (num_houses * 0.25) - 2.00
    end
  end




  def report
    "I'm #{name}, I've delivered #{@experience} papers and i've earned #{mulla} so far"
  end

end

tommy = Paperboy.new("Tommy")
tommy.deliver(20,29)
p tommy.report
