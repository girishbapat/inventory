class ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def edit
    @item =Item.find(params[:id])
  end
  def show
    @category=Category.find(params[:category_id])
    @item = Item.find(params[:id])
  end
  def index
    @items = Item.all
  end
  def create
    @category=Category.find(params[:category_id])
    @item= @category.items.create(item_params)

    #uploaded_io = params[:item][:image]
    #File.open(File.join('public', uploaded_io.original_filename), 'wb') do |file|
    #  file.write(uploaded_io.read)
    #end
    url=category_path(@category)
    redirect_to url
  end

  def update
    @category=Category.find(params[:category_id])
    @item= Item.find(params[:id])
      if @item.update(item_params)
        url=category_path(@category)
        redirect_to url
      else
        render 'edit'
      end
  end

  def destroy
    @category = Category.find(params[:category_id])
    @item = @category.items.find(params[:id])
    @item.destroy

    redirect_to  category_path(@category)
  end
  private
    def item_params
      params.require(:item).permit(:name,:desc,:unitPrice, :quantity, :minQty, :maxQty, :sku,:image,:status,:category_id )
    end
end
