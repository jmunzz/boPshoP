class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.string :record_label
      t.string :artist
      t.string :title
      t.integer :year
      t.string :condition
      t.string :description
      t.integer :user_id

      t.timestamps
    end
  end
end
