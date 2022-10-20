class TodaysItemsController < ApplicationController
  def create
    @todays_item = TodaysItem.new(todays_item_params)
    @closet = Closet.find(params[:closet_id])
    @todays_item.closet = @closet
    @todays_item.weared_on = Date.today
    if @todays_item.save
      redirect_to closet_path(@closet)
    else
      render 'closet/show'
    end
  end

  private 

  def todays_item_params
    params.require(:todays_item).permit(:wear_id)
  end
end
