class PostsController < ApplicationController
 
  def index
  end


  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    @like = Like.new
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  def short
     @all_ranks = Post.find(Like.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))
  end

  def long
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def middle
    @player_ranks = Post.group(:cf).order('count_cf DESC').count(:cf)
  end



  private
  def post_params 
    params.require(:post).permit(:title, :cf, :rwg, :lwg, :lcm, :rcm, :cdm, :rsb, :rcb, :lcb, :lsb, :gc).merge(user_id: current_user.id)
  end


end

