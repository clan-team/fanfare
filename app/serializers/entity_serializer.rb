class EntitySerializer < ActiveModel::Serializer
	attributes :id, :name, :created_at, :updated_at, :location_name, :location_lat, :location_long
end