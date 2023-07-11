class PostsController < ApplicationController
  before_action :authenticate_user! 

  def index
    user_ids = current_user.timeline_user_ids  # list of user_ids returned by the current users' .timeline_user_ids method in User Model
    @posts = Post.where(user_id: user_ids)     # user_id key points to an array of selected Posts instead of all the Posts
                .order("created_at DESC")
  end 

  def show 
    @post = Post.find(params[:id])
    @can_moderate = (current_user == @post.user)
  end 
  
end
