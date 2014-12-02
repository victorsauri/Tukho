class UsersController < ApplicationController
	helper_method :user_params
	helper_method :connector_params
	def home
	end
	def index
		@users = User.order(created_at: :desc).limit(11)
	end

	def new
		@user = User.new
		@connector = Connector.new
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
	    privacy: params[:user][:privacy], email: params[:user][:email], password: params[:user][:password])
	    if @user.save
	    	redirect_to users_path
	    else
	    	render 'new'
	    end
	  end
	end

	def edit
		@user = User.find params[:id]
		# @connector = Connector.new(color: params[:color])
	end

	def update
		@user = User.find params[:id]
		# @connector = Connector.new(color: params[:color])

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
   	params.require(:user).permit(:name, :description, :privacy, :email, :password)
  end
  def connector_params
   	params.require(:connector).permit(:color, :user_id, :event_id)
  end

  # def connector
  #   	@connector ||= connectors.find params[:connector_id]
  # end
end
