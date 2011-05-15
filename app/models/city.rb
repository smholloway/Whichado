class City
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  
  has_many :days
  
  index :name, unique: true
end
