class User < ActiveRecord::Base
	validates :username, presence: true, uniqueness: true

	validates :firstname, presence: true

	validates :lastname, presence: true

	validates :maxrent, presence: true

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
	
	has_secure_password
	validates :password, length: { minimum: 4 }

#returns hash digest
def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

end
