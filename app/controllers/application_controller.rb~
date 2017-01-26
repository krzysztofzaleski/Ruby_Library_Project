class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
	before_action :authorize
	def authorize
		unless User.find_by(id: session[:user_id])
			redirect_to ksiazkas_url,notice: "Zaloguj sie"
		end
	end
end
