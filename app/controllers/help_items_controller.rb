class HelpItemsController < ApplicationController
  before_action :set_help_item, only: [:show, :edit, :update, :destroy]

  # GET /help_items
  # GET /help_items.json
  def index
    @help_items = HelpItem.all
  end

  # GET /help_items/1
  # GET /help_items/1.json
  def show
  end

  # GET /help_items/new
  def new
    @help_item = HelpItem.new
  end

  # GET /help_items/1/edit
  def edit
  end

  # POST /help_items
  # POST /help_items.json
  def create
    @help_item = HelpItem.new(help_item_params)

    respond_to do |format|
      if @help_item.save
        format.html { redirect_to @help_item, notice: 'Help item was successfully created.' }
        format.json { render :show, status: :created, location: @help_item }
      else
        format.html { render :new }
        format.json { render json: @help_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /help_items/1
  # PATCH/PUT /help_items/1.json
  def update
    respond_to do |format|
      if @help_item.update(help_item_params)
        format.html { redirect_to @help_item, notice: 'Help item was successfully updated.' }
        format.json { render :show, status: :ok, location: @help_item }
      else
        format.html { render :edit }
        format.json { render json: @help_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /help_items/1
  # DELETE /help_items/1.json
  def destroy
    @help_item.destroy
    respond_to do |format|
      format.html { redirect_to help_items_url, notice: 'Help item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_help_item
      @help_item = HelpItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def help_item_params
      params.require(:help_item).permit(:heading1, :heading2, :title1, :title2, :bullet_heading, :bullet1, :bullet2, :bullet3, :bullet5)
    end
end
