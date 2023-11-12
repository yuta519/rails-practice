class CreateGoods < ActiveRecord::Migration[7.0]
  def change
    create_table :goods do |t|
      t.string :name
      t.string :category
      t.string :place
      t.integer :quantity
      t.references :owner, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
