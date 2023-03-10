class Users::RegistrationsController < Devise::RegistrationsController
  skip_before_action :verify_authenticity_token, :only => :update

  def update
    account_update_params = devise_parameter_sanitizer.sanitize(:account_update)
    @user = User.find(current_user.id)

    if needs_password?
      successfully_updated = @user.update_with_password(account_update_params)
    else
      account_update_params.delete('password')
      account_update_params.delete('password_confirmation')
      account_update_params.delete('current_password')
      successfully_updated = @user.update_without_password(account_update_params)
    end

    if successfully_updated
      set_flash_message :notice, :updated
      sign_in @user, :bypass => true
      redirect_to edit_user_registration_path
    else
      render 'edit'
    end
  end

  private
  def needs_password?
    # only when changing e-mail or password
    @user.email != params[:user][:email] || params[:user][:password].present?
  end
end
