class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :count
      t.date :expiration_date
      t.integer :category_id
      t.integer :place_id
      t.timestamps
    end
  end
end
