class StaticPagesController < ApplicationController
  def index    
    @products= Product.all
    @cart_item = current_cart.cart_items.new
  end

  def contact
  end
  
  def about
  end
end
