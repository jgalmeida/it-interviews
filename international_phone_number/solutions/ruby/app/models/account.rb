class Account
  include Mongoid::Document
  
  field :contact_id, type: String
  field :credit, type: Float
  field :discount, type: Float

  has_many :movements
end
