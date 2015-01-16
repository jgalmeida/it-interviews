module Calculator
  class TalkdeskNumberCost

    DEFAULT_TALDESK_COST = 0.01
    US_FEE = 0.03
    UK_FEE = 0.06
    US_TOLL_FEE = ["1800", "1888", "1877", "1866", "1855", "1844"]
    UK_TOLL_FEE = ["0800", "0808", "0500"]

    def self.perform(call)
      cost = DEFAULT_TALDESK_COST
      talkdesk_number = call.talkdesk_phone_number

      if((talkdesk_number.start_with? "1") && US_TOLL_FEE.any?{|n| talkdesk_number.start_with? n})
        cost = US_FEE
      elsif((talkdesk_number.start_with? "0") && UK_TOLL_FEE.any?{|n| talkdesk_number.start_with? n})
        cost = UK_FEE
      end

      cost
    end

  end
end
