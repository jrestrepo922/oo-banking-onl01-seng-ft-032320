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

  def execute_transaction

    if self.status == "pending" && sender.balance >= self.amount && sender.status != "closed"
      sender.balance = sender.balance - self.amount
      receiver.balance = receiver.balance + self.amount
      self.status = "complete"
      binding.pry
    else
      "Transaction rejected. Please check your account balance."
      self.status = "rejected"
    end
  end
end
