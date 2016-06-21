class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :lat
      t.string :lon

      t.timestamps null: false
    end
  end
end
