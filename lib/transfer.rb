class Transfer
  attr_reader :sender, :receiver, :status
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
  end
end
