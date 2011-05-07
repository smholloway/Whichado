class City
  include Mongoid::Document
  field :name, type: String
  has_many :days
  index :name, unique: true
end
