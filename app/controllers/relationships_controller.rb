class RelationshipsController < ApplicationController
  
  def create
    user = User.find(params[:user_id])
    current_user.follow(user)
    redirect_to request.referer
  end
  
  def destroy
    user = User.find(params[:user_id])
    current_user.unfollow(user)
    redirect_to request.referer
  end
  
  def followers # フォロワー一覧表示
    user = User.find(params[:user_id])
    @users = user.followers
  end
  
  def following # フォロー一覧表示
    user = User.find(params[:user_id])
    @users = user.following
  end
  
end
