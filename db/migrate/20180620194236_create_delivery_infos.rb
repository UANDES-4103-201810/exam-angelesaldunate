class CreateDeliveryInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :delivery_infos do |t|
      t.string :address
      t.string :adressinfo
      t.integer :phone

      t.timestamps
    end
  end
end
