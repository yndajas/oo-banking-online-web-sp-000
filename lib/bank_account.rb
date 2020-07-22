class BankAccount
  attr_accessor :balance, :status
  attr_reader :name #this should really be an accessor because people can change their names
  
  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end
  
  def desposit(amount)
    @balance += amount
  end
  
end
