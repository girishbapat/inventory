class CategoriesController < ApplicationController
  def index
    #@categories = Category.all
    @categories = Category.where('name LIKE ?', "%#{params[:search]}%" ).paginate(:per_page => 10, :page => params[:page])
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
    @category = Category.find(params[:id])
  end

  def show
    @category=Category.find(params[:id])
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to @category
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    redirect_to categories_path
  end

  def reports
    logger.debug "--------In reports action"
  end

  def reportnew
    logger.debug "%%%%%%%%%%%%%%%%%%%%%%%In reports action"
  end

  private
  def category_params
    params.require(:category).permit(:name, :desc)
  end

end
