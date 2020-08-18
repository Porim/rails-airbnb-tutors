class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @users = User.all
  end

  # def show
  # end

  # private

  # def set_user

  # end
end
