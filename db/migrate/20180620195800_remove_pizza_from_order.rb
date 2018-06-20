class RemovePizzaFromOrder < ActiveRecord::Migration[5.2]
  def change
    remove_reference :orders, :pizza, foreign_key: true
  end
end
