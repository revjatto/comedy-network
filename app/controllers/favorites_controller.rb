class FavoritesController < ApplicationController
  def update
    favorite = Favorite.where(post: Post.find(params[:post]), user: current_user)
  end
end
