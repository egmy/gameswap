# # frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  def update
    skip_before_filter :verify_authenticity_token, :only => :update

    account_update_params = devise_parameter_sanitizer.sanitize(:account_update)
    @user = User.find(current_user.id)

    if needs_password?
      successfully_updated = @user.update_with_password(account_update_params)
    else
      account_update_params.delete('password')
      account_update_params.delete('password_confirmation')
      account_update_params.delete('current_password')
      successfully_updated = @user.update_attributes(account_update_params)
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
    @user.email != params[:user][:email] || params[:user][:password].present?
  end
end
#   # before_action :configure_sign_up_params, only: [:create]
#   # before_action :configure_account_update_params, only: [:update]

#   # GET /resource/sign_up
#   # def new
#   #   super
#   # end

#   # POST /resource
#   # def create
#   #   super
#   # end

#   # GET /resource/edit
#   def edit
#     super
#   end

#   # PUT /resource override
#   # def update
#   #   self.resource = resource_class.to_adapter.get!(send(:"current_#{resource_name}").to_key)
#   #   prev_unconfirmed_email = resource.unconfirmed_email if resource.respond_to?(:unconfirmed_email)

#   #   # no_password_required = false
#   #   # if params[:password].blank? && params[:password_confirmation].blank? #and params[:current_password].blank?
#   #   #   # no_password_required = true
#   #   #   #account_update_params[:password] = current_user.password
#   #   #   #current_user.update(params.require(:user).permit(:username, :description))
#   #   #   # clean_up_passwords resource
#   #   #   resource_updated = update_resource_without_password(resource, account_update_params)
#   #   #   # resource_updated = false
#   #   # else
#   #     resource_updated = update_resource_without_password(resource, account_update_params)
#   #   # end
#   #   # yield resource if block_given?
#   #   if resource_updated# and not no_password_required
#   #     set_flash_message_for_update(resource, prev_unconfirmed_email)
#   #     bypass_sign_in resource, scope: resource_name if sign_in_after_change_password?

#   #     respond_with resource, location: after_update_path_for(resource)
#   #   # elsif no_password_required and not resource_updated
#   #   #   current_user.description = params[:description]
#   #   #   current_user.username = params[:username]
#   #   #   current_user.save
#   #   #   clean_up_passwords resource
#   #   #   set_minimum_password_length
#   #   #   flash[:success] = "Profile update successful"
#   #   #   redirect_to edit_user_registration_path
#   #   else
#   #     clean_up_passwords resource
#   #     set_minimum_password_length
#   #     respond_with resource
#   #   end
#   # end

#   # DELETE /resource
#   # def destroy
#   #   super
#   # end

#   # GET /resource/cancel
#   # Forces the session data which is usually expired after sign
#   # in to be expired now. This is useful if the user wants to
#   # cancel oauth signing in/up in the middle of the process,
#   # removing all OAuth session data.
#   # def cancel
#   #   super
#   # end

#   # protected

#   # If you have extra params to permit, append them to the sanitizer.
#   # def configure_sign_up_params
#   #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
#   # end

#   # If you have extra params to permit, append them to the sanitizer.
#   # def configure_account_update_params
#   #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
#   # end

#   # The path used after sign up.
#   # def after_sign_up_path_for(resource)
#   #   super(resource)
#   # end

#   # The path used after sign up for inactive accounts.
#   # def after_inactive_sign_up_path_for(resource)
#   #   super(resource)
#   # end

#   # override
#   def update_resource(resource, params)
#     resource.update_with_password(params)
#   end

#   def update_resource_without_password(resource, params)
#     resource.update_without_password(params.except("current_password"))
#   end

#   # def set_flash_message_for_update(resource, prev_unconfirmed_email)
#   #   return unless is_flashing_format? or no_password_required

#   #   flash_key = if update_needs_confirmation?(resource, prev_unconfirmed_email)
#   #                 :update_needs_confirmation
#   #               elsif sign_in_after_change_password?
#   #                 :updated
#   #               else
#   #                 :updated_but_not_signed_in
#   #               end
#   #   set_flash_message :notice, flash_key
#   # end
# end
