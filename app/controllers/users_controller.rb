class UsersController < ApplicationController
  def index
    @user = User.find()
  end

  def show
  end

  def edit
  end
end
