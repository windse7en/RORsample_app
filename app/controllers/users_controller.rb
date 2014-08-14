class UsersController < ApplicationController
	
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success]='Welcome to our blog new world'
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

 
private
   ## set the fields which are accessible. to make sure the secure area has not been sent
    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
