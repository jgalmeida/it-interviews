module Calculator
  class ExternalNumberCost

    DEFAULT_EXTERNAL_COST = 0.01 

    def self.perform(call)
      cost = DEFAULT_EXTERNAL_COST

      if call.external?
        cost = ::TwillioPriceForCall.perform(call)
      end

      cost
    end

  end
end
