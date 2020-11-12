class MakersController < ApplicationController
  before_action :set_maker, only: [:show, :edit, :update, :destroy]

  def index
    @makers = Maker.all
  end

  def show
  end

  def new
    @maker = Maker.new
  end

  def create
    @maker.images.attach(ActiveStorage::Blob.find(@maker.s_blob_id)) if !@maker.images.attached? && @maker.image_blob_id
    @maker = Maker.new(maker_params)
    if @maker.save
      redirect_to makers_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @maker.images.attach(ActiveStorage::Blob.find(@maker.image_blob_id)) if !@maker.images.attached? && @maker.image_blob_id
    @maker.images.purge if params[:maker][:remove_image_id]
    if @maker.update(maker_params)
      redirect_to makers_path
    else
      render 'edit'
    end
  end

  def destroy
    @maker.destroy
    redirect_to makers_path
  end

  private

  def set_maker
      @maker = Maker.find(params[:id])
  end

  def maker_params
    params[:maker].permit(:name, :country, :image_blob_id, images:[])
  end
end