class StoreController < ApplicationController

  
  def index
	#@products = App.find(params[:id])
  	@products = App.order(:price)  	 
  end

  def free

    @free=App.where(price:'0') 
  end

  def desc
      @desc = App.order(price: :desc)      
  end

  def paid
    @paid= App.where.not(price: '0') 

  end

  def show
  	 @product = App.find(params[:id])
  end

  def blind
      @blind = App.where(:category_id => 1)
  end

  def blindFree
      @blind=App.where(:category_id => 1)
      @blindFree=@blind.where(price:'0') 
  end 

  def sight
      @sight = App.where(:category_id => 2)
  end

  def motorical 
  	@motorical= App.where(:category_id=> 3)
  end 

  def learning
    @learning = App.where(:category_id => 4)
  end

  def hearing
    @hearing = App.where(:category_id => 5)
  end

   def WheelChair
    @WheelChair = App.where(:category_id => 6)
  end

end
