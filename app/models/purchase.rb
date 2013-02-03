class Purchase < ActiveRecord::Base
  after_save :add_product_stock

  belongs_to :products
  attr_accessible :quantity

  def add_product_stock
   	pd = ProductStock.find_by_product_id(self.product_id)
  	pd.quantity += self.quantity
  	pd.save
  end

end
