class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.where.not(id: current_user.id)
    @tags = Tag.all
  end
  def show
    @user = current_user
  end
  def edit
  end
end
