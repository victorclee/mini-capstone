class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :photo
      t.integer :product_id

      t.timestamps
    end
  end
end