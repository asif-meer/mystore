class Product < ActiveRecord::Base
  belongs_to :supplier
  attr_accessible :description, :name, :price, :supplier_id
end
