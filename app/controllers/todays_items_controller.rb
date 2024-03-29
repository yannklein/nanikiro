class TodaysItemsController < ApplicationController
  before_action :find_todays_item, only: [:destroy]

  def create
    @todays_item = TodaysItem.new(todays_item_params)
    @closet = Closet.find(params[:closet_id])
    @todays_item.closet = @closet
    @todays_item.weared_on = Date.today
    @wear_by_cat = @closet.wears.group_by { |wear| wear.category }
    @wear = Wear.new
    if @todays_item.save
      redirect_to closet_path(@closet)
    else
      render 'closets/show'
    end
  end

  def destroy
    @todays_item.destroy
    redirect_to closet_path(@todays_item.closet)
  end

  private 

  def find_todays_item
    @todays_item = TodaysItem.find(params[:id])
  end

  def todays_item_params
    params.require(:todays_item).permit(:nanikiro_wear_id)
  end
end
