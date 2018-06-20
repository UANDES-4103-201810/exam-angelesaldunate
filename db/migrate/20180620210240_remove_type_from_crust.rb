class RemoveTypeFromCrust < ActiveRecord::Migration[5.2]
  def change
    remove_column :crusts, :type, :string
  end
end
