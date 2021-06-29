class ApplicationController < ActionController::Base
    before_action :authenticate_user!
    before_action :configure_premitted_parameters, if: :devise_controller?

    private
    def configure_premitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
