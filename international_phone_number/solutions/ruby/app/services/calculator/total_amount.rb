module Calculator
  class TotalAmount

    def self.perform(call)
      duration = call.duration.to_i.ceil
      price_per_minute = Calculator::PricePerMinute.perform(call)

      duration * price_per_minute
    end

  end
end
