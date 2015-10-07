class GalleriesController < ApplicationController
  def index
    @gallery = Gallery.new
    @galleries = Gallery.all
  end

  def create
    @gallery = Gallery.create(gallery_attributes)

    images = images_attributes.map do |image_attribute|
      Image.create(image: image_attribute)
    end

    @gallery.images = images

    redirect_to gallery_path(@gallery)
  end

  def show
    @gallery = Gallery.find(params[:id])
  end

  private

  def gallery_attributes
    params.require(:gallery).permit(:name, :images => [])
  end

  def images_attributes
    params.permit(:images => [])[:images]
  end
end
