class ChatsController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    @users = User.where.not(id: current_user.id)
    @tags = Tag.all
  end
 
  private
end