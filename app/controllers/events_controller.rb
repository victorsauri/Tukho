class EventsController < ApplicationController
	helper_method :event_params
	def index
		@event = Event.order(created_at: :desc).limit(8)
	end
	def edit
		@event = Event.find(name: params[:name], description: params[:description],
	    location: params[:location], date: params[:date])
	end
 private
	def event_params
   	params.require(:event).permit(:name, :description, :location, :date, :starting_time, :finishing_time)
  end
end

