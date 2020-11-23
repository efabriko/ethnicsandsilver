class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :user_id
      t.integer :product_id
      t.float :total

      t.timestamps
    end
    add_index :orders, :user_id
    add_index :orders, :product_id
  end
end
