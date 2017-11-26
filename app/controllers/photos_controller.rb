class PhotosController < ApplicationController
  def index
  	@photos = Photo.all
  end

  def new
  	@photo = Photo.new
  end

  def create
  	params[:photo][:category_id] = params[:category_id]
  	pp @photo = current_user.photos.build(photo_params)
  	redirect_to photos_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

	def photo_params
		params.require(:photo).permit(:user_id, :category_id, :name, :photo)
	end

end
