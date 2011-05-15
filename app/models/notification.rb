class Notification
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :city, type: String
  field :email, type: String
  
  validates_presence_of :city
  validates_presence_of :email
  validates_format_of :email,
                      :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i
end
