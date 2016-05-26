class StoreController < ApplicationController

  
  def index
	#@products = App.find(params[:id])
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

  def blind
      @blind = App.where(:category_id => 1)
      @free_blind = @blind.where(price:'0')
      
  end

  def sight
      @sight = App.where(:category_id => 2)
  end

  def motorical 
  	@motorical= App.where(:category_id=> 3)
  end 

  def learning
    @learningDisabled = App.where(:category_id => 4)
  end

end
