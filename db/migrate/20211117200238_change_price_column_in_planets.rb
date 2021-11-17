class ChangePriceColumnInPlanets < ActiveRecord::Migration[6.0]
  def change
    rename_column :planets, :price, :price_cents
  end
end
