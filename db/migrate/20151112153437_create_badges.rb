class CreateBadges < ActiveRecord::Migration
  def change
    create_table :badges do |t|
      t.string :name
      t.boolean :default

      t.timestamps null: false
    end
  end
end
