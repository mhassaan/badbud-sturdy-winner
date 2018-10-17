class Admin::ProductsController < ApplicationController
  layout 'admin/application'
  def index
    @products = Product.all
  end

  def new 
    @product = Product.new
  end

  def create 
    product = Product.new(product_params)
    if product.save
      flash[:success] = "Product Added Successfully."
    else
      flash[:error] = product.errors.full_messages.join('<br/>')
    end
    redirect_to new_admin_product_path
  end
  protected
  def validate_photo
  end

  def product_params
    params.require(:product).permit(:name,:desc,:strain_type,:price, photos: [])
  end
end
