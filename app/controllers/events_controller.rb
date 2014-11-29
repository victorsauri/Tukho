class EventsController < ApplicationController
	def index
			@event = Event.order(created_at: :desc).limit(11)
	end
end

