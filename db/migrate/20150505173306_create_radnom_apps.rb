class CreateRadnomApps < ActiveRecord::Migration
  def change
    create_table :radnom_apps do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
