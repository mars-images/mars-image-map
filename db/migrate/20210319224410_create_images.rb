class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.integer :site
      t.string :itemName
      t.datetime :dateAdded
      t.datetime :arrivalTime
      t.integer :startSol
      t.integer :endSol
      t.integer :drive
      t.string :contributor
      t.float :lon
      t.float :lat
      t.float :z
      t.float :y
      t.float :x
      t.float :mapPixelH
      t.float :mapPixelV
      t.string :rot

      t.timestamps
    end
  end
end
