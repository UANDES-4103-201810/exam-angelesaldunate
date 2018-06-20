class AddNameToCrust < ActiveRecord::Migration[5.2]
  def change
    add_column :crusts, :name, :string
  end
end
