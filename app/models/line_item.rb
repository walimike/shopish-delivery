class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    product.price.to_i * quantity.to_i
  end

  def cart_user 
    user = User.find_by_id self.cart.user_id
    user.email
  end
end
