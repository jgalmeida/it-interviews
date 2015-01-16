module Calculator
  class ProfitMargin

    def self.perform(call)
      Account.find(call.account_id).discount
    end

  end
end
