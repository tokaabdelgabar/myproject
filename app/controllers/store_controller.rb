class StoreController < ApplicationController

  
  def index
	#@products = App.find(params[:id])
  	@products = App.order(:price)  	 
  end

  def free

    @app=App.find(params[:category_id])
    @opp=App.where(price:'0') 
    @free=@app && @opp
  end

  def desc
      @desc = App.order(price: :desc)      
  end

  def paid
    @app=App.find(params[:category_id])
    @pai= App.where.not(price: '0') 
    @paid=@app && @pai

  end

  def show
  	 @product = App.find(params[:id])
  end

  def blind
      @blind = App.where(:category_id => 1)
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
