class AddAgeToOwners < ActiveRecord::Migration[6.1]
  def change
    add_column :owners, :age, :integer
  end
end
