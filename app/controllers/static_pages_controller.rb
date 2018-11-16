class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
<<<<<<< HEAD
      #@likes = Like.where(micropost_id: params[:micropost_id])
=======
      @likes = Like.where(micropost_id: params[:micropost_id])
>>>>>>> fadc696f32cda1e86a6f898a0632e706fc0138bc
    end
  end

  def help
  end

  def about
  end
  
  def contact
  end
end
