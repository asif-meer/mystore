class AdminUserCreated < ActiveRecord::Migration
  def up
    default_admin_user = User.new(:email =>'admin@store.com', :password => "admin123" )
    default_admin_user.save!
  end

  def down
  end
end
