class Call
  PROPERTIES = [:duration, :account_id, :contact_id, :call_id,
                :talkdesk_phone_number, :customer_phone_number, :forwarded_phone_number,
                :record, :timestamp
               ]
  
  attr_reader *PROPERTIES

  def initialize params
    PROPERTIES.each do |k|
      instance_variable_set("@#{k}", params[k])
    end
  end


  def browser?
    forwarded_phone_number.nil?
  end

  def external?
    !browser?
  end
end
