class ProductsController < ApplicationController

  def index
    @product = Product.all
  end
  def new
    @product = Product.new
  end

  def create
    @product = Product.new(products_params)

    if @product.save
    redirect_to @product
    else
      render "new"
    end
  end

  def update
    @product = product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private
  def products_params
    params.require(:product).permit(:title, :description, :price)
  end

end


# def price
#   number_to_currency(self, unit: "$", delimiter: ".")
# end
