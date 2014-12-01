class EventsController < ApplicationController
	helper_method :event_params
	helper_method :connector_params

	def index
		@event = Event.order(created_at: :desc).limit(8)
	end
	def show
	 @event = Event.find event_params

	 # Event.users << User.find params[:id]
	end

	private

	def event_params
   	params.require(:event).permit(:name, :description, :location, :starting_time, :finishing_time, :date)
  end
  def connector_params
	 	params.require(:connector).permit(:color, :user_id, :event_id)
  end


	# def edit
	# 	@connector = Event.find_by(color: params[:connector][:color], user_id: params[:connector][:user_id],
	#     even_id: params[:connector]	[:even_id])
	# end
 # private
	# def connector_params
 #   	params.require(:connector).permit(:color, :user_id, :event_id)
 #  end
end

