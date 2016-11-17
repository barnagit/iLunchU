class User < ApplicationRecord
	has_many :Lunch #hosted lunches
	#has_many :Lunch, through => :Guests #guest lunches
	has_many :Guests
	has_many :Votes #votes
end
