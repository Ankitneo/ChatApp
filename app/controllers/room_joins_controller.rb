class RoomJoinsController < ApplicationController
	def add
		# redirect_to root_url
		 if current_user.join.present?
		# @join=Join.new(user_id: current_user.id)
		if !(current_user.join.roomjoin.include?(params[:room]))
		@j=current_user.join.update(roomjoin: current_user.join.roomjoin.append(params[:room].to_i))
		# @join=current_user.join.roomjoin.append(params[:room].to_i)
		# if @join.save
			redirect_to root_path
		else
		end
		# end
	else
		@join=Join.new(user_id: current_user.id)
		@join.roomjoin.append(params[:room].to_i)
        if @join.save
			redirect_to root_path
		end
	end
  end
end