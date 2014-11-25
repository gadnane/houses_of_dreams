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

end
