module Calculator
  class PricePerMinute

    def self.perform(call)
      Calculator::TalkdeskNumberCost.perform(call) + Calculator::ExternalNumberCost.perform(call) - Calculator::ProfitMargin.perform(call)
    end

  end
end
