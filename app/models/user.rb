class User < ActiveRecord::Base
  has_and_belongs_to_many :entities
  has_many :favorite_locations
end
