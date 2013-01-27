class ProductStock < ActiveRecord::Base
  belongs_to :product
  attr_accessible :quantity, :product_id
end
