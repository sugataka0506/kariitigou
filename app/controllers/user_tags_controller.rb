class UserTagsController < ApplicationController
    def create
      tag_name = params[:tag_name]
      tag = Tag.find_by(name: tag_name)
      if tag.nil?
        tag = Tag.new(name: tag_name)
        tag.save
      end
      user_tag = UserTag.find_by(user_id: current_user.id, tag_id: tag.id)
      if user_tag.nil?
        user_tag = UserTag.new(user_id: current_user.id, tag_id: tag.id)
        user_tag.save
      end
      redirect_to("/me/edit")
    end
    
    def destroy
      user_tag = UserTag.find(params[:id])
      user_tag.destroy
      redirect_to("/me/edit")
    end 
end
