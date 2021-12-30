class User < ApplicationRecord
  # https://api.rubyonrails.org/v7.0.0/classes/ActiveModel/SecurePassword/ClassMethods.html#method-i-has_secure_password
  has_secure_password
end
