require 'pry'
class Transfer
  attr_accessor :status
  attr_reader :sender, :receiver, :amount
  
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
    if self.valid? && self.status == "pending"
      self.sender.deposit(-amount)
      self.receiver.deposit(amount)
      self.status = "complete"
    elsif !self.valid?
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end
  end
  
end
