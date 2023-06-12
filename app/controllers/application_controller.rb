class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name])
	end

	def authorized_request(kind = nil)
		unless kind.include?(current_user.role)
			redirect_to publications_path, notice: "Solo el administrador puede realizar esta acción"
		end
	end
end
