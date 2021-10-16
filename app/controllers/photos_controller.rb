class PhotosController < ApplicationController
  def index
    photos = Photo.all
    render json: photos.as_json
  end

  def show
    the_id = params[:id]
    one_photo = Photo.find_by(id: the_id)
    render json: one_photo
  end

  def create
    new_photo = Photo.new(
      name: params[:input_name],
      width: params[:input_width],
      height: params[:input_height]
    )
    new_photo.save
    render json: new_photo
  end

  def update
    id = params[:id]
    update_photo = Photo.find_by(id: id)
    update_photo.name = params[:input_name] || update_photo.name
    update_photo.width = params[:input_width] || update_photo.width
    update_photo.height = params[:input_height] || update_photo.height
    update_photo.save
    render json: update_photo
  end

end
