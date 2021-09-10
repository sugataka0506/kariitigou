class ChatsController < ApplicationController
  before_filter :authenticate_user!
     def index
        @users = User.where.not(id: current_user.id)
        @tags = Tag.all
     end
     def create
        @users =User.new(content: params[:content])
        @post.save
        redirect_to("/chats/index")
     end
  private
end