class CreatePlanets < ActiveRecord::Migration[6.0]
  def change
    create_table :planets do |t|
      t.references :user, null: false, foreign_key: true
      t.string :address
      t.text :description
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
