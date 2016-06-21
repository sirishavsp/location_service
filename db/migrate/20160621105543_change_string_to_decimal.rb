class ChangeStringToDecimal < ActiveRecord::Migration
  def change
    change_column :articles, :lon, :decimal
  end
end
