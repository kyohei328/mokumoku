class Users::FollowsController < ApplicationController

    before_action :set_user

    def create
        current_user.follow(params[:user_id])
    end

    def destroy
        current_user.unfollow(params[:user_id])
    end

    private

    def set_user
        @user = User.find(params[:user_id])
    end
end