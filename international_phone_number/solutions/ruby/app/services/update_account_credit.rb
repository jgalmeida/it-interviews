class UpdateAccountCredit

  def self.perform(account_id, call_id, value)
    account = Account.find(account_id)
    credit_before = account.credit

    account.credit = account.credit - value;

    if account.save
      account.movements.create!({call_id: call_id, value: value, credit_before: credit_before, credit_after: account.credit})
    end

    account.credit
  end

end
