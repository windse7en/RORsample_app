class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:session][:email].downcase)
		if( user && user.authenticate(params[:session][:password]))
			sign_in user # sign in the user class 
			redirect_to user # redirect to the user show method 
		else
			flash.now[:error]="Invalid email/password"	#f lash message, show the error's hash value. user now to only refresh the error 
			flash.now[:notice]="Great!" # show the flash notice
			render 'new'	# use string to render the page
		end
	end

	def destroy
	end

end
