class DebitAccount

  def self.perform(params)
    call = Call.new(params)

    value = Calculator::TotalAmount.perform(call)
    UpdateAccountCredit.perform(call.account_id, call.call_id, value)
  end

end
