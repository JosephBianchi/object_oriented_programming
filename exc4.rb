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
  @quota = 50 + (@experience / 2)
  end

  def deliver(start_adress, end_adress)
    delivered = 0
    delivered = (end_adress.to_f - start_adress.to_f + 1.00)
  end

  def mulla
    if delivered == 50
      return @quota * 0.25
    elsif delivered > @quota
      return (@quota * 0.25) + ((delivered - @quota) * 0.50)
    else
      return (delivered * 0.25) - 2.00
    end
  end




  def report
    "I'm #{name}, I've delivered #{deliver} papers and i've earned #{mulla} so far"
  end

end

tommy = Paperboy.new("Tommy")
tommy.deliver(29, 20)
p tommy.report
