class UsersController < ApplicationController
	def new
	end

	def create
		user = User
			.where(username: user_params[:username])
			.first_or_initialize(user_params)

		if user.persisted?
			if user.authenticated_with?(user_params[:password])
				# if user already exists with same password, log them in
				session[:user_id] = user.id
				redirect_to(user_entities_path(user), notice: "Logged you in!")
				return
			end
		elsif user.save
			# if save succeeds, log them in
			session[:user_id] = user.id
			redirect_to(entities_path, notice: "Signed you up!")
			return
		end

		# if user already exists (or something else goes wrong),
		# display error message
		redirect_to(new_user_path, alert: "Invalid credentials")
	end

	private

	def user_params
		params.require(:user).permit(:username, :password)
	end
end
