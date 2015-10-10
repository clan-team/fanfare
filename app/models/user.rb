class User < ActiveRecord::Base
  validates :username, uniqueness: true, presence: true
  validates :password_hash, presence: true

  has_and_belongs_to_many :entities
  has_many :favorite_locations

  def password=(new_password)
  	write_attribute(
  		:password_hash, Digest::MD5.hexdigest(new_password)
  	)
  end

  def self.authenticate(options = {})
  	params = options.merge(
  		'password_hash' =>  hash_password(options['password'])
  	)
  	params.delete('password')
  	User.where(params).first
  end
end
