class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def destroy
  end
end
