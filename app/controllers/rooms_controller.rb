class RoomsController < ApplicationController
	before_action :authenticate_user!
	before_action :load_entities

	def show
		@room = Room.find(params[:id])
		@room_message = RoomMessage.new room: @room
		@room_messages = @room.room_messages.includes(:user)
	end

	def create
		@room = Room.find_or_create_by(room_params)
		# if @room.save
		#   flash[:success] = "A room for #{@room.name} was created successfully"
		#   redirect_to room_path(@room)
		# else
		#   render :new
		# end
		redirect_to "/rooms/#{@room.id}"
	end
	
	protected

	def load_entities
		@room = Room.find(params[:id]) if params[:id]
	end

	def room_params
		params.permit(:tm_id, :name)
	end
end
