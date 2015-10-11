class SessionsController < ApplicationController
	def new
	end

	def create
		if u = User.authenticate(user_params)
			session[:user_id] = u.id
			redirect_to(root_path, notice: "Logged in!")
		else
			redirect_to(new_session_path, alert: "Invalid credentials")
		end
	end

	def destroy
		session.delete(:user_id)
		redirect_to(root_path, notice: "Logged out")
	end

	private

	def user_params
		params.require(:user).permit(:username, :password)
	end
end
