class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
    #render plain: params[:category].inspect
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def show
    @category=Category.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private
  def category_params
    params.require(:category).permit(:name, :desc)
  end

end
