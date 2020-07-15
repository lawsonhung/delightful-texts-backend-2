class User < ApplicationRecord
  has_secure_password

  has_many :ice_cream_orders
end
