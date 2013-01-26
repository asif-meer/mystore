class Supplier < ActiveRecord::Base
  has_many :products, :dependent => :destroy
  attr_accessible :address, :city, :company_name, :contact_name, :contact_title, :phone
end
