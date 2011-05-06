class Day
  include Mongoid::Document
  field :date, type: Date
  
  embeds_many :events
  embedded_in :city
end
