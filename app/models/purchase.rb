class Purchase < ActiveRecord::Base
  belongs_to :products
  attr_accessible :quantity
end
