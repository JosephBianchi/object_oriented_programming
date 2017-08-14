class BankAccount
  def initialize
    @balance = 0
    @interest_rate = 0.05
  end

  def balance
    @balance
  end

  def interest_rate
    @interest_rate
  end

  def deposit(deposit_amount)
    @balance += deposit_amount
  end

  def withdraw(withdraw_amount)
    @balance -= withdraw_amount
  end

  def gain_interest(gain_interest_inc)
    @balance *= (gain_interest_inc + 1)
  end
end

account1 = BankAccount.new

account1.deposit(50)

p account1

account1.withdraw(20)

p account1

account1.gain_interest(0.05)

p account1
