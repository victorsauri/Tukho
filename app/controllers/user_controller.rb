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

	def create

		@user = User.find_by(name: params[:user][:name])
    unless @user
	    @user = User.new(name: params[:user][:name], description: params[:user][:description],
	    color: params[:user][:color], privacy: params[:user][:privacy])
	    if @user.save
	    	redirect_to user_index_path(@user)
	    else
	    render 'new'
	    end
	  end
	end

	private

	# def get_random_users_for_seed
 #  	find(:all).sample(5)
	# end
end
