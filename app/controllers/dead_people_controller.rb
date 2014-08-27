class DeadPeopleController < ApplicationController
  def search
  	i=10
  	if(!params[:last_name].empty?)
  		if(!params[:first_name].empty?)
  			@deadpeople = DeadPeople.where(last_name:params[:last_name],first_name:params[:first_name]).first(i)
  		else
			@deadpeople = DeadPeople.where(last_name:params[:last_name]).first(i)  	
		end
	else
		if(!params[:first_name].empty?)
			@deadpeople = DeadPeople.where(first_name:params[:first_name]).first(i)  	
		end	
	end
  end
end
