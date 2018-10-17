module CartItemsHelper
  def cart_item_exists
    content_for :cart_item_exists do 
      return \
        "<div class='alert alert-warning alert-dismissible fade show' role='alert'>
        Item already exists in the cart.
        <button type='button' class='close' data-dismiss='alert' aria-label='Close'>
          <span aria-hidden='true'>&times;</span>
        </button>
      </div>"
    end
  end
end
