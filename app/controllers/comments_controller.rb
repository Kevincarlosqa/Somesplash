class CommentsController < ApplicationController
  def index
  end

  def new
    @comment = Comment.new
  end

  def show
  end

  def create
    comments_params
    binding.pry
    comment = Comment.new(comments_params)
    if comment.save
      redirect_to category_path(comment.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def comments_params
    params.require(:comment).permit(:comment, :commentable, :commentable_type, :commentable_id)
  end

end
