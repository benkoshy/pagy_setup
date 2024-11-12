class ProductsController < ApplicationController  

  # GET /products or /products.json
  def index
    @pagy, @products = pagy(Product.all, limit: 10) 
    # limit sets the number of items per page.
    # you can also configure this number in the pagy's initializer
  end        
end
