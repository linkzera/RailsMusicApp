class AddSuperadmin < ActiveRecord::Migration[6.1]
  def change
    User.create! do |u|
        u.email     = 'test_admin@test.com'
        u.password  = 'administrator'
        u.superadmin_role = true
    end
  end
end
