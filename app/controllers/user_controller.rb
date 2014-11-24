class UserController < ApplicationController
	def home
	end
	def index
	end
	def new
		@user = User.new
	end
end
