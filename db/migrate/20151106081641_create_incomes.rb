class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.string :sources
      t.decimal :amount
      t.integer :tax
      t.date :execution_date
      t.references :wallet, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
