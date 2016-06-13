module Admin
  class UsersController < ApplicationController
    def index
      @users = User.all
    end

    def destroy
      User.find(params[:id]).destroy
      redirect_to admin_users_path,
                  notice: 'User has been successfully destroyed.'
    end
  end
end
