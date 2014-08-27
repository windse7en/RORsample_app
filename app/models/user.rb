class User < ActiveRecord::Base
	before_save { self.email = email.downcase }
	before_create :create_remember_token;	# create the remember token before the creating

 	validates :name, presence: true, length: {maximum: 50}
 	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
	validates :password, length: { minimum: 6 }
	validates :password_confirmation, presence:true

	def self.new_remember_token	# use the SecureRandom to create 64 token
		SecureRandom.urlsafe_base64
	end

	def self.get_hash(token)	# encrypt the token.   # error: wrong num of arguments, never overwirte the core function, like hash()
		Digest::SHA1.hexdigest(token.to_s)	# use token.to_s to avoid the nil
	end

	private
		def create_remember_token
			self.remember_token = get_hash(new_remember_token)
		end


	has_secure_password
end
