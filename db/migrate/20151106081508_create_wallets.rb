class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.string :name
      t.decimal :amount
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end