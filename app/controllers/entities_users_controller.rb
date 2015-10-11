class EntitiesUsersController < ApplicationController
	respond_to :json

	def create
		user = User.find(entities_users_params[:user_id])
		entity = Entity.find(entities_users_params[:entity_id])
		respond_with user.entities << entity
	end

	private

	def entities_users_params
		params.permit(:user_id, :entity_id)
	end
end