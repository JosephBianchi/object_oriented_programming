class Player
  def initialize
    @lives = 5
    @gold_coins = 0
    @health_points = 10
  end

  def level_up
    @lives += 1
  end

  def collect_treasure
    @gold_coins += 1
    if @gold_coins % 10 == 0
      level_up
    end
  end

  def do_battle(damage)
    @health_points -= damage
    if @health_points < 1
      @lives -= 1
      health_points = 10
    end
    if @lives <= 0
      restart
    end
  end

    def restart
      @lives = 5
      @gold_coins = 0
      @health_points = 10
    end

end

player1 = Player.new

player1.level_up
p player1

player1.collect_treasure
player1.collect_treasure
player1.collect_treasure
player1.collect_treasure
player1.collect_treasure
player1.collect_treasure
player1.collect_treasure
player1.collect_treasure
player1.collect_treasure
player1.collect_treasure
p player1

player1.do_battle(10)
player1.do_battle(10)
player1.do_battle(10)
player1.do_battle(10)
player1.do_battle(10)
player1.do_battle(10)
player1.do_battle(10)
p player1
