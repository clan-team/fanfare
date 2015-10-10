class Api::V1::EntitiesController < ApplicationController
  respond_to :json

  def index
    respond_with Entity.all
  end

  def show
    respond_with entity
  end

  def create
    respond_with :api, :v1, Entity.create(lead_params)
  end

  def update
    respond_with entity.update(entity_params)
  end

  def destroy
    respond_with entity.destroy
  end

  private

  def entity
    Entity.find(params[:id])
  end

  def entity_params
    params.require(:entity).permit(:id, :name, :created_at, :updated_at, :location_name, :location_lat, :location_long)
  end

end