class GoodsController < ApplicationController
  def index
    @goods = Good.all
  end
end
