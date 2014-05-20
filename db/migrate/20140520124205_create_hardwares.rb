class CreateHardwares < ActiveRecord::Migration
  def change
    create_table :hardwares do |t|
      t.integer :id_hardware
      t.integer :id_type
      t.string :inv_number, :limit => 100
      t.string :serial_number, :limit => 100
      t.integer :status
      t.integer :id_worker
      t.string :name, :limit => 100
      t.integer :localization
      t.text :comments
      t.integer :last_rent
      t.integer :last_return

      t.timestamps
    end
  end
end
