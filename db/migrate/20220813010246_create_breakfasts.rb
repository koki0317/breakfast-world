class CreateBreakfasts < ActiveRecord::Migration[7.0]
  def change
    create_table :breakfasts do |t|
      t.string :name
      t.text :description
      t.integer :rating
      t.string :img_url

      t.timestamps
    end
  end
end
