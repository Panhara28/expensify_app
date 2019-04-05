class CreateExpenses < ActiveRecord::Migration[5.1]
  def change
    create_table :expenses do |t|
      t.integer :amout
      t.text :description
      t.integer :category_id

      t.timestamps
    end
  end
end
