class EventsController < ApplicationController
	def index
		@event = Event.order(created_at: :desc).limit(8)
	end
	def edit
		@event = Event.find params[:id]
	end
end

