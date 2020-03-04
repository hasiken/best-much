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

  private
  def post_params 
    params.require(:post).permit(:title, :cf, :rwg, :lwg, :lcm, :rcm, :cdm, :rsb, :rcb, :lcb, :lsb, :gc)
  end


end

