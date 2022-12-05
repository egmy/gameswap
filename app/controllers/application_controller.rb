class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :description, :image, :password])
        devise_parameter_sanitizer.permit(:account_update, keys: [
            :email,
            :username,
            :password,
            :password_confirmation,
            :current_password,
            :image,
            :description,
        ])
        # devise_parameter_sanitizer.for(:account_update) {|u| u.permit(

        # )}
    end

end
