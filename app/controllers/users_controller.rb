class UsersController < ApplicationController
	def new 
	end

	def create
		u = User.new(user_params)
		if u.save
			session[:user_id] = u.id
			redirect_to(entities_path, notice: "Successful Sign-up!")
		else
			redirect_to(new_user_path, alert: "Invalid credentials")
		end
	end

	private

	def user_params
		params.require(:user).permit(:username, :password)
	end
end