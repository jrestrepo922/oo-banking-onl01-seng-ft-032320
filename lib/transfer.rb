class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
    #binding.pry
  end

  def valid? #can check that both accounts are valid"
    if sender.valid? && receiver.valid?
      true
    else
      false
    end
  end
end
