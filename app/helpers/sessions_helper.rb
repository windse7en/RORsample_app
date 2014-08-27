module SessionsHelper

	def sign_in(user)
		remember_token = User.new_remember_token
		cookies.permanent[:remember_token] = remember_token 	# cookies[:remember_token]={value: remember_token, expires: 20.years.from_now.utc}
		user.update_attribute(:remember_token, User.get_hash(remember_token))		# error: wrong num of arguments, never overwirte the core function, like hash()
		@current_user = user;
	end

	def signed_in?
		!@current_user.nil?  # much with @, if use current_user.nil? will get the wrong number of arguments pro
	end

	def current_user=(user)
		@current_user = user
	end

	def current_user
		remember_token = User.hash(cookies[:remember_token])
		@current_user ||= User.find_by(remember_token: remember_token)
	end
end
