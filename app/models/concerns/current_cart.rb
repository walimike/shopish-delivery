module CurrentCart

    private
  
    def set_cart
      if current_user
        @cart = Cart.find_by_user_id(current_user.id)
        @cart ? @cart : Cart.create(user_id:current_user.id)
      end
    end
  end