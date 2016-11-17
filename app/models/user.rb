class User < ApplicationRecord
	has_many :Lunch #hosted lunches
	#has_many :Lunch, through => :Guests #guest lunches
	has_many :Guests
	has_many :Votes #votes
	acts_as_authentic do |c|
      c.crypto_provider = Authlogic::CryptoProviders::Sha512
    end
end
