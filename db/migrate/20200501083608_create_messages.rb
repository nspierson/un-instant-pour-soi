class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :first_last_name
      t.string :phone
      t.string :email
      t.string :object
      t.string :city
      t.text :content

      t.timestamps
    end
  end
end
