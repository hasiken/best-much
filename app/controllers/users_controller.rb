class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @posts = current_user.posts
    @user = User.find(params[:id])
  end
end
