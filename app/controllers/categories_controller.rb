class CategoriesController < ApplicationController
  def index
    @categories = Category.all
    render "index"
  end

  def new
  end

  def show
    @categories = Category.find(params[:id])
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
