class SessionsController < ApplicationController
	def create
		if User.find_by(email: params[:user][:email]) &&  User.find_by(email: params[:user][:email]).password == (params[:user][:password])
      @user = User.find_by(email: params[:user][:email])
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
			redirect_to root_path
		end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to root_path
  end
end
