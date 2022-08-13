class CreateFavorites < ActiveRecord::Migration[7.0]
  def change
    create_table :favorites do |t|
      t.text :comment
      t.references :list, null: false, foreign_key: true
      t.references :breakfast, null: false, foreign_key: true

      t.timestamps
    end
  end
end
