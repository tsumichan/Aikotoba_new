class FavoriteController < ApplicationController

  def show
    @user = current_user
    @favs = Favorite.where(user_id: @user.id).all
  end

  def create
    @user_id = current_user.id
    @favorite = Favorite.new(message_id: params[:id], user_id: current_user.id)

    if @favorite.save
      redirect_to show_favorite_path, success: 'おきに に追加しました！'
    else
      redirect_to show_favorite_path, danger: 'おきに に追加できませんでした…'
    end

  end

  def destroy
    @favorite = Favorite.find_by(message_id: params[:id])
    if @favorite.destroy
      redirect_to show_favorite_path, success: 'おきに から削除しました！'
    else
      redirect_to show_favorite_path, danger: 'おきに から削除できませんでした。もう一度実行してください'
    end
  end

end
