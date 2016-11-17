class Guest < ApplicationRecord
  belongs_to :User
  belongs_to :Lunch
end
