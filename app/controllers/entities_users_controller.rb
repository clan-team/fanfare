class EntitiesUsersController < ApplicationController
	respond_to :json

	def create
		user = User.find(entities_users_params[:user_id])
		entity = Entity.find(entities_users_params[:entity_id])

		unless user.entities.include?(entity)
			user.entities << entity
		end

		respond_to do |format|
			format.json { render json: {} }
		end
	end

	private

	def entities_users_params
		params.permit(:user_id, :entity_id)
	end
end
