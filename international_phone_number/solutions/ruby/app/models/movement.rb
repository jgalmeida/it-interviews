class Movement
  include Mongoid::Document
  
  field :account_id 
  field :call_id, type: String
  field :value, type: Float
  field :credit_before, type: Float
  field :credit_after, type: Float

  #Credit will be in account balance

  belongs_to :account
end
