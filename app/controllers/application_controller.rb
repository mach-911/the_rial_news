class ApplicationController < ActionController::Base
	
	def authorized_request(kind = nil)
		unless kind.include?(current_user.role)
			redirect_to publications_path, notice: "Solo el administrador puede realizar esta acción"
		end
	end
end
