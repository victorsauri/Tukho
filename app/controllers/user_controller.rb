class UserController < ApplicationController

	def home
		@user
	end

	def index
		@user = User.all
	end

	def new
		@user = User.new
	end

	def show
		unless @user = User.find(params[:id])
			render 'user_not_found'
		end
	end

	# 	def create
	#     @user = User.new
	#     if @user.save
	#     	redirect_to users_show_path(@user)
	#     else
	#     	flash[:alert] = "Sorry your new entry has not been created"
	#       render 'new'
	#     end
	# end

	private

	def get_random_users_for_seed
  	find(:all).sample(5)
	end
end
