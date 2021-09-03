class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.where.not(id: current_user.id)
    @tags = Tag.all
  end
  def show 
    @user = User.find_by(id: params[:id])
  end
  
  private
end
