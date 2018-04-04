class PhotosController < ApplicationController
  def index
  	@photos = Photo.all
  end

  def show
  	@photo = Photo.find(params[:id])
  end

  def new
  	@photo = Photo.new
  end

  def create
  	@photo = Photo.create(post_params)
  	redirect_to photos_path
  end

  def edit
  	@photo = Photo.find(params[:id])
  end

  def update
  	@photo = Photo.find(params[:id])
    @photo.update(post_params)
    redirect_to(photos_path(@post))
  end

  private

  def post_params

  params.require(:photo).permit(:image, :location, :description) 

  end



end

