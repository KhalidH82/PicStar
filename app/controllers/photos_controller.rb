require 'pry'

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
    if @photo.save
  	redirect_to photos_path
  else
    redirect_to new_photo_path
  end
  end

  def edit
  	@photo = Photo.find(params[:id])
  end

  def update
  	@photo = Photo.find(params[:id])
    @photo.update(post_params)
    redirect_to(photos_path(@photo))
  end

  def destroy
   
   p 'i am inside destroy '
    @photo = Photo.find(params[:id])
    binding.pry
    Photo.delete(params['id'])
    redirect_to photos_path
  end

  private

  def post_params

  params.require(:photo).permit(:image, :location, :description) 

  end



end

