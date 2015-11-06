class ExcutionDateAdd < ActiveRecord::Migration
  def change
    add_column :expenses , :excution_date , :date
  end
end
