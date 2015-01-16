class TwillioPriceForCall

  def self.perform(call)
    number = call.forwarded_phone_number
    number[0] = '' #Remove plus sign

    prefixes = generate_prefixes(number)

    rates = InternationalRate.in(prefix: prefixes)

    rates.max_by(&:prefix).rate
  end

  private
  def self.generate_prefixes(string)
    prefixes = []
    
    string.size.times do |i|
      prefixes << string[0..i]
    end

    prefixes
  end

end
