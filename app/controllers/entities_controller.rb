class EntitiesController < ApplicationController
	def index
		@entities = Entity.all
	end

  def show
    @entity = Entity.find(params[:id])
  end

  def tickets
  	@entity = Entity.find(params[:id])
	end
end
