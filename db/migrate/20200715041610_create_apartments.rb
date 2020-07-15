class CreateApartments < ActiveRecord::Migration[6.0]
  def change
    create_table :apartments do |t|
      t.string :neighborhood
      t.string :building_type
      t.integer :rent

      t.timestamps
    end
  end
end
