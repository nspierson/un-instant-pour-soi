class CreateCares < ActiveRecord::Migration[5.2]
  def change
    create_table :cares do |t|
      t.string :name
      t.integer :price
      t.integer :duration

      t.timestamps
    end
  end
end
