class StoreController < ApplicationController
	  def index
  	@products = App.order(:price)  	 
  end

  def free
  	 @free = App.where(price:'0') 
  end

  def desc
      @desc = App.order(price: :desc)      
  end

  def paid
  	@paid = App.where.not(price: 'free') && App.order(:price)
  end

  def show
  	@product = App.find(params[:id])
  end

end
