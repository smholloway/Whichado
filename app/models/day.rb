class Day
  include Mongoid::Document
  field :city, type: String
  field :date, type: Date
  has_many :events
  belongs_to :city
  index(
      [
        [ :city, Mongo::ASCENDING ],
        [ :date, Mongo::DESCENDING ]
      ],
      unique: true
    )
end
