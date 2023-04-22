class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render "index"
  end

  def show
    @categories = Category.find(params[:id])
  end
  # GET /categories/new -> Solo vista, cuando se envia el formulario redirecciona a create
  def new
    @categories = Category.new
  end

  # GET deparments/:id/edit
  def edit
    @categories = Category.find(params[:id])
  end

  # POST /categories
  def create
    @categories = Category.new(categories_params)
    # binding.pry
    if @categories.save
      # redirect_to "/categories/#{@categories.id}"
      redirect_to category_path(@categories)
      # redirect_to @categories
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH categories/:id
  def update
    @categories = Category.find(params[:id])
    # binding.pry
    if @categories.update(categories_params)
      # redirect_to "/categories/#{@categories.id}"
      redirect_to category_path(@categories)
      # redirect_to @categories
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    category = Category.find(params[:id])
    category.destroy

    redirect_to categories_path, status: :see_other
  end

  private

  def categories_params
    params.require(:category).permit(:name, :description)
  end
end
