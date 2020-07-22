require 'pry'
class Transfer
  attr_reader :sender, :receiver, :amount, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    self.sender.valid? && self.receiver.valid?
  end
  
  def execute_transaction
    binding.pry
    self.sender.balance -= self.amount && self.receiver.balance += self.amount if self.valid?  
  end
  
end
