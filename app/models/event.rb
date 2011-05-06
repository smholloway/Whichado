class Event
  include Mongoid::Document
  field :name, type: String
  field :description, type: Text
  field :date, type: Date # fk
  field :time, type: Time
  field :sponsor, type: String
  field :city, type: String # fk
  field :state, type: String
  field :zip, type: String
  field :cost, type: String
  field :link_to_buy, type: String
  field :link_to_venue, type: String
  field :vetted, type: Boolean, default: false
  
  embeds_many :categories
  embedded_in :day
end
