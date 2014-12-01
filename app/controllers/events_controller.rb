class EventsController < ApplicationController
	helper_method :event_params
	helper_method :connector_params
	helper_method :current_user
	attr_accessible :color
	# before_action :authenticate_user!

	def index
		@event = Event.order(created_at: :desc).limit(8)
	end
	def show
	 	@event = Event.find params[:id]
	 	if current_user
	 		current_user.events << @event
	 	end
	end
	def choose_color
	 	@connector = current_user.connectors.where(event_id:params[:id]).first
		@connector.attributes connector_params
		@connector.save
		redirect_to :back
	end

	private
	def event_params
   	params.require(:event).permit(:name, :description, :location, :starting_time, :finishing_time, :date)
  end
  def connector_params
	 	params.require(:connector).permit(:color, :user_id, :event_id)
  end
end