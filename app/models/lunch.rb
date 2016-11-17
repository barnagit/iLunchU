class Lunch < ApplicationRecord
  belongs_to :User #host
  #has_many :Users, through => :Guests #guests
  has_many :Guests
  has_many :Votes
end
