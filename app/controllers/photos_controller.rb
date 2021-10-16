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

end
