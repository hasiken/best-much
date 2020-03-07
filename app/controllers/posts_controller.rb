class PostsController < ApplicationController
 
  def index
     @posts = Post.all
     
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
  end

  def short
     @all_ranks = Post.find(Like.group(:post_id).order('count(post_id) desc').limit(3).pluck(:post_id))
  end

  private
  def post_params 
    params.require(:post).permit(:title, :cf, :rwg, :lwg, :lcm, :rcm, :cdm, :rsb, :rcb, :lcb, :lsb, :gc).merge(user_id: current_user.id)
  end


end

