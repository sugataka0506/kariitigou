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
    @user = current_user
  end
  def update
    @user = current_user
    @user.update(user_params)
    redirect_to edit_user_path
  end
  
  private
  
  def user_params
    params.require(:user).permit(:image, :name, :description, :opinion, :email , :birthday, :region)
  end
end
