class LikesController < ApplicationController
  before_action :authenticate_user!

  def create
    @micropost = Micropost.find params[:micropost_id]
    @micropost.likes.create(user_id: current_user.id)
    #redirect_to micropost.user
    
    #like = Like.create(user_id: current_user.id, micropost_id: params[:micropost_id])
    #user = like.micropost.user
    #redirect_to user

    #respond_to do |format|
    #  format.html { redirect_to @micropost.user }
    #  format.js
    #end

  end
  
  def destroy
    @micropost = Micropost.find params[:micropost_id]
    @micropost.likes.where(user_id: current_user.id).destroy_all
    #redirect_to micropost.user

    #like = Like.find_by(user_id: current_user.id, micropost_id: params[:micropost_id])
    #user = like.micropost.user
    #like.destroy
    #redirect_to user

    #respond_to do |format|
    #  format.html { redirect_to @micropost.user }
    #  format.js
    #end


  end

end
