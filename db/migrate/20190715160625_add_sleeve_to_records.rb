class AddSleeveToRecords < ActiveRecord::Migration[5.2]
  def change
    add_column :records, :sleeve, :string
  end
end
