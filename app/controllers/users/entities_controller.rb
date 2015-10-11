class Users::EntitiesController < ApplicationController
	def index
		@entities = User.find(params[:user_id]).entities
	end

	def show
	end

	def create
		user = User.find(entities_users_params[:user_id])
		entity = Entity.find(entities_users_params[:id])

		unless user.entities.include?(entity)
			user.entities << entity
		end

		respond_to do |format|
			format.json { render json: {} }
		end
	end

	private

	def entities_users_params
		params.permit(:user_id, :id)
	end
end
