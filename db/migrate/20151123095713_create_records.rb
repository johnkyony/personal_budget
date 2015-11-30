class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.string :title
      t.string :date
      t.float :amount

      t.timestamps null: false
    end
  end
end
