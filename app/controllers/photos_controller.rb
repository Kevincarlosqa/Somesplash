class PhotosController < ApplicationController

  # GET /photos/new?department_id=21
  def new
    @photo = Photo.new
    @category = Category.find(params[:category_id])
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photo_path(@photo)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /search?query=
  def search
    query = params[:query].downcase
    @photos = Photo.where("LOWER(title) LIKE ?", "%#{query}%")
  end

  def edit
  end

  def update
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy

    redirect_to categories_path, status: :see_other
  end

  

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :image, :category_id)
  end
end
