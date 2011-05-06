class Day
  include Mongoid::Document
  field :name, type: String
  
  embeds_many :days
end
