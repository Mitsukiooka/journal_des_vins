class Login::WinesController < Login::ApplicationController
  before_action :set_wine, only: [:show, :edit, :update, :destroy]

  def new
    @wine = Wine.new
  end

  def create
    @wine = Wine.new(wine_params)
    @wine.image.attach(ActiveStorage::Blob.find(@wine.image_blob_id)) if !@wine.image.attached? && @wine.image_blob_id
    if @wine.save
      redirect_to wines_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @wine.image.attach(ActiveStorage::Blob.find(@wine.image_blob_id)) if !@wine.image.attached? && @wine.image_blob_id
    @wine.image.purge if params[:wine][:remove_image_id]
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
    params[:wine].permit(
      :name, 
      :country, 
      :area, 
      :year, 
      :price, 
      :color, 
      :taste, 
      :aroma,
      :kind, 
      :comments, 
      :maker_id,
      :genre_id, 
      :image, 
      :image_blob_id)
  end
end