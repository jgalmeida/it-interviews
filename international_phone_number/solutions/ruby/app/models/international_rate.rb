class InternationalRate
  include Mongoid::Document
  
  field :prefix, type: String
  field :rate,   type: Float

  index({ name: 1 }, { name: 'international_rate_name_index' })
end
