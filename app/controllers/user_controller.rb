class UserController < ApplicationController

	def home
	end

	def index
	end

	def new
		@user = User.new
	end

	private

	def get_random_users_for_seed
  find(:all).sample(5)
	end
end
