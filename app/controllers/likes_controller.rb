class LikesController < ApplicationController
  
  
  def create
    @like = Like.new(user_id: @current_user.id, post_id: params[:post_id])
    @like.save
    @post = Post.find_by(id: @like.post_id)
    @like_count = Like.where(post_id: params[:post_id]).count
  end

  def destroy
    @like = Like.find_by(user_id: @current_user.id, food_id: params[:food_id])
    @post = Food.find_by(id: @like.post_id)
    @like.destroy
    @like_count = Like.where(post_id: params[:post_id]).count
  end


end


