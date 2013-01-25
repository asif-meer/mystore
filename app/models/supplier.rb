class Supplier < ActiveRecord::Base
  attr_accessible :address, :city, :company_name, :contact_name, :contact_title, :phone
end
