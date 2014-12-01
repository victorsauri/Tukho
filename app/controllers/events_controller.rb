class EventsController < ApplicationController
	helper_method :event_params
	helper_method :connector_params

	def index
		@event = Event.order(created_at: :desc).limit(8)
	end
	def show
	 	@event = Event.find params[:id]
	 	if User.current_user
	 		User.current_user << @event
	 	end
	end

	def choose_color
		@connector = Connector.where(user_id: current_user.id, event_id: params[:event_id])
		@connector.update(color: params[:color])
	end


	private
	def event_params
   	params.require(:event).permit(:name, :description, :location, :starting_time, :finishing_time, :date)
  end
  def connector_params
	 	params.require(:connector).permit(:color, :user_id, :event_id)
  end
end

 # Event.users << User.find params[:id]

 	# def edit
	# 	@connector = Event.find_by(color: params[:connector][:color], user_id: params[:connector][:user_id],
	#     even_id: params[:connector]	[:even_id])
	# end
 # private
	# def connector_params
 #   	params.require(:connector).permit(:color, :user_id, :event_id)
 #  end