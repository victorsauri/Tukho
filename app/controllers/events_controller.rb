class EventsController < ApplicationController
	helper_method :event_params
	helper_method :connector_params
	helper_method :current_user
	

	def index
		@counter = 0
		@events = Event.order(created_at: :desc).limit(8)
		@connectors =  current_user.connectors
		@all_connectors = Connector.all
		@total_sum = @all_connectors
	end
	def show
	 	@event = Event.find params[:id]
	 	if current_user
	 		# current_user.events << @event
	 		connector = Connector.new user_id: current_user.id, event_id: @event.id
	 		if connector.save
	 			puts 'saved'
	 		else
	 			puts 'la has liao'
	 		end
	 	end
	end
	def choose_color
	 	@connector = Connector.find_by(user_id: current_user.id, event_id:params[:id])
		@connector.update_attributes connector_params
		redirect_to :events
	end

	private
	def event_params
   	params.require(:event).permit(:name, :description, :location, :starting_time, :finishing_time, :date)
  end
  def connector_params
	 	params.require(:connector).permit(:color, :user_id, :event_id)
  end
end