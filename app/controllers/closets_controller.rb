class ClosetsController < ApplicationController
  before_action :find_closet, only: [:show, :update, :destroy]
  def index
    @closets = Closet.all
    @closet = Closet.new
  end

  def show
    @todays_item = TodaysItem.new
    @wear_by_cat = @closet.wears.group_by { |wear| wear.category }
    @wear = Wear.new
  end

  def create
    @closet = Closet.new(closet_params)
    @closet.user = current_user
    if @closet.save
      redirect_to closet_path(@closet)
    else
      render :index
    end
  end

  def edit
    if @closet.update(closet_params)
      redirect_to closet_path(@closet)
    else
      render :index
    end
  end

  def destroy
    @closet.destroy
    redirect_to closets_path
  end

  private 

  def find_closet
    @closet = Closet.includes(:wears).find(params[:id])
  end

  def closet_params
    params.require(:closet).permit(:name)
  end
end
