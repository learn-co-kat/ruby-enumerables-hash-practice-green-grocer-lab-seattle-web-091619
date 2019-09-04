def consolidate_cart(cart)
  new_hash = {}
  cart.each do |item|
    key = item.keys[0]
    if new_hash[key]
      new_hash[key][:count] += 1
    else
      nested_hash = item[key]
      nested_hash[:count] = 1
      new_hash[key] = nested_hash
    end
  end
  new_hash
end

def apply_coupons(cart, coupons)
  item_on_sale = coupons[0][:item]
  cart["#{item_on_sale} W/COUPON"] = {}
  cart
end

def apply_clearance(cart)
  
end

def checkout(cart, coupons)
  
end
