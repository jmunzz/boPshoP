class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.integer :seller
      t.integer :buyer
      t.string :item
      t.date :date

      t.timestamps
    end
  end
end
