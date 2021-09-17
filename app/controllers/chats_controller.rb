class ChatsController < ApplicationController
  before_filter :authenticate_user!
     def index
         @receiver_id = params[:id]
         @chats = Chat.where(sender_id: current_user.id, receiver_id: @receiver_id).or(Chat.where(sender_id: @receiver_id, receiver_id: current_user.id))
     end
     def create
        @chat =Chat.new(content: params[:content], sender_id: current_user.id,receiver_id: params[:id])
        @chat.save
        redirect_to("/users/#{params[:id]}/chats")
     end
     
  private
end