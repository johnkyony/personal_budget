class CreateLevels < ActiveRecord::Migration
  def change
    create_table :levels do |t|
      t.integer :badge_id
      t.integer :User_id

      t.timestamps null: false
    end
  end
end
