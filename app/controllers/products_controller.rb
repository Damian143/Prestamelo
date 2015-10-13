class ProductsController < ApplicationController
  def new
  end

  def create
    @product = Product.new(products_params)

    @product.save
    redirect_to @product
  end


  private
  def products_params
    params.require(:product).permit(:title, :description, :price)
  end

end


# def price
#   number_to_currency(self, unit: "$", delimiter: ".")
# end
