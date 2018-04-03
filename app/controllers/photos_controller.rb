class PhotosController < ApplicationController
  def index
  end

  def show
  end

  def new
  	@photo = Photo.new
  end
end
