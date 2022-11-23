class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = User.find(params[:profile_id])
        render :show
    end

    def edit
        @user = current_user
        render :edit
    end
end
