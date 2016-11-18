class Lunch < ApplicationRecord
  belongs_to :User, inverse_of: Lunch #host
  #has_many :Users, through => :Guests #guests
  has_many :Guests
  has_many :Votes
end
