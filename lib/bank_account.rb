class BankAccount
  attr_accessor :balance, :status
  attr_reader :name #this should really be an accessor because people can change their names
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def deposit(amount)
    @balance += amount
  end
  
  def display_balance
    puts "Your balance is $#{@balance}."
  end
  
end
