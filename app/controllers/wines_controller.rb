class WinesController < ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]

  def index
    @wines = Wine.all
  end

  def show
  end

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    if @wine.save
      redirect_to wines_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @wine.update(wine_params)
      redirect_to wines_path
    else
      render 'edit'
    end
  end

  def destroy
    @wine.destroy
    redirect_to wines_path
  end

  private

  def set_wine
      @wine = Wine.find(params[:id])
  end

  def wine_params
    params[:wine].permit(:name, :country, :area, :year, :price, :color, :taste, :aroma, :comments, :maker_id)
  end
end