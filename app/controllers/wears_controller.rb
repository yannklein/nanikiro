class WearsController < ApplicationController
  before_action :find_wear, only: [:update, :destroy]

  def create
    @wear = Wear.new(wear_params)
    @closet = Closet.find(params[:closet_id])
    @wear.closet = @closet
    if @wear.save
      redirect_to closet_path(@closet)
    else
      render 'closet/index'
    end
  end

  def destroy
    @wear.destroy
    redirect_to closet_path(@wear.closet)
  end

  def update
    if @wear.update(wear_params)
      redirect_to wear_path(@wear)
    else
      render 'closet/index'
    end
  end

  private 

  def find_wear
    @wear = Wear.find(params[:id])
  end

  def wear_params
    params.require(:wear).permit(:season, :wear_type, :nanikiro_closet_id, :photo, :color)
  end
end
