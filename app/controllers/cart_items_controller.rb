class CartItemsController < ApplicationController
  def create 
    @cart = current_cart
    unless item_exists?
      @cart_items = @cart.cart_items.new(cart_item_params)
      @cart.save
    end
    session[:cart_id] = @cart.id
    respond_to do |format|
      format.js
    end
  end
  
  protected
  def cart_item_params
    params.require(:cart_item).permit(:product_id, :quantity)
  end
  def item_exists?
    (@cart.cart_items.where(product_id: cart_item_params[:product_id]).first)? true : false
  end
end
