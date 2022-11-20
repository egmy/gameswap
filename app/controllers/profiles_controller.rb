class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def show
        @user = User.find(params[:profile_id])
        render :show
    end
end
