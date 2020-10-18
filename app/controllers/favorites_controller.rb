class FavoritesController < ApplicationController
  
  
  def create
    #unless current_user.likes.include?(clicked_micropost)
    current_user.favorite_this(clicked_micropost)
    #favorite = current_user.favorite.new(micropost_id: clicked_micropost.id)
    #end 
    #if favorite.save
    flash[:success] = 'いいね！しました'
    redirect_back(fallback_location: root_path)

  end
    
    #else
      #flash[:alert] = 'すでに　いいね！済みです'
      #redirect_back(fallback_location: root_path)
    #end
  
  
  def destroy
    current_user.favorites.find_by(micropost_id: params[:micropost_id]).destroy
    flash[:danger] = 'いいね！を取り消しました'
    redirect_back(fallback_location: root_path)
  end
  
  private
  
  def clicked_micropost
    Micropost.find(params[:micropost_id])
  end
  
end
