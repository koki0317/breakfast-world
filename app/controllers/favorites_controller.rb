class FavoritesController < ApplicationController
  def new
    @favorite = Favorite.new
    @list = List.find(params[:list_id])
  end

  def create
    @favorite = Favorite.new(favorite_params)
    @list = List.find(params[:list_id])
    @favorite.list = @list
    if @favorite.save
      redirect_to list_path(@list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to list_path(@favorite.list), status: :see_other
  end

  private

  def favorite_params
    params.require(:favorite).permit(:comment, :breakfast_id)
  end
end
