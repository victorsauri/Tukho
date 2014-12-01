class SessionsController < ApplicationController
	def create
		if User.find_by(user_id: params[:user][:user_id]) &&  User.find_by(user_id: params[:user][:user_id]).authenticate(params[:user][:password])
      @user = User.find_by(name: params[:user][:name]).authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to users_path(@user.id)
    else
			redirect_to events_path
		end
  end

  def destroy
  	session[:user_id] = nil
    redirect_to root_path
  end
end
