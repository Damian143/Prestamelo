class ProductsController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :update, :destroy]
                                    # except: [:index, show]

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
    @product = Product.find(params[:id])

    if @product.update(product_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    redirect_to products_path
  end

  private
  def products_params
    params.require(:product).permit(:title, :description, :price)
  end

end


# def price
#   number_to_currency(self, unit: "$", delimiter: ".")
# end
