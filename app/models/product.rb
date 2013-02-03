class Product < ActiveRecord::Base
  belongs_to :supplier
  has_one :product_stock, :dependent => :destroy
  has_many :purchase
  after_save { |product| ProductStock.create(:product_id => product.id)}
  #accepts_nested_attributes_for :product_stock

  attr_accessible :description, :name, :price, :supplier_id

end
