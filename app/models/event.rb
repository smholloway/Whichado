class Event
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :name, type: String
  field :description, type: String
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
  belongs_to :day
  
  index "categories.name"
end
