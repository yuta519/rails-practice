# Goods Controller
class GoodsController < ApplicationController
  def index
    @goods = Good.all
  end

  def show
    @good = Good.find(params[:id])
  end

  def new
    @users = User.all
    @categories = Good.categories
    @good = Good.new
  end

  def create
    @good = Good.new(good_params)

    if @good.save
      redirect_to @good
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @good = Good.find(params[:id])
    if @good.destroy
      redirect_to goods_path, status: :see_other
    else
      render @good, status: :unprocessable_entity
    end
  end

  private

  def good_params
    params.required(:good).permit(:name, :category, :place, :quantity, :owner_id)
  end
end
