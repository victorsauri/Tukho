class UsersController < ApplicationController

	def home
	end

	def index
		@users = User.order(created_at: :desc).limit(10)
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
		@user = User.find_by(id: params[:user][:id])
    unless @user
	    @user = User.new(name: params[:user][:name], description: params[:user][:description],
	    color: params[:user][:color], privacy: params[:user][:privacy])
	    if @user.save
	    	redirect_to users_path
	    else
	    	render 'new'
	    end
	  end
	end

	def edit
		@user = User.find params[:id]
	end

	def update
		@user = User.find params[:id]

		if @user.update_attributes user_params
	      redirect_to action: :show, controller: 'users', user_id: @user.id
	    else
	      render 'edit'
    end
   end

  def destroy
      @user = User.find(params[:id])

      if @user.destroy
       	redirect_to action: :index
      else
     		redirect_to :back
  	end
  end

	private

	def user_params
   	params.require(:user).permit(:name, :description, :color, :privacy)
  end

	# def get_random_users_for_seed
 #  	find(:all).sample(5)
	# end
end
