class UsersController < ApplicationController
  #authenticate_user!は、ログインしていない場合にログインページにリダイレクトさせるヘルパーメソッドです。
  before_filter :authenticate_user!
  
  def index
    if params[:tag_id].present?
      @tag = Tag.find(params[:tag_id])
      @users = @tag.users.where.not(id: current_user.id)
    else
      @users = User.where.not(id: current_user.id)
    end
    @tags = Tag.all
  end
  def show 
    @user = User.find_by(id: params[:id])
  end
  
  private
end
