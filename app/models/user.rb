class User < ApplicationRecord
	has_many :Lunch, inverse_of: User #hosted lunches
	acts_as_authentic do |c|
      c.crypto_provider = Authlogic::CryptoProviders::Sha512
    end
end
