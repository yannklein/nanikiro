class TodayItemsController < ApplicationController
  def create
    @todays_item = TodaysItem.new(todays_item_params)
    @closet = Closet.find(params[:closet_id])
    @todays_item.closet = @closet
    if @todays_item.save
      redirect_to closet_path(@closet)
    else
      render 'closet/index'
    end
  end

  private 

  def wear_params
    params.require(:todays_item).permit(:wear_id)
  end
end
