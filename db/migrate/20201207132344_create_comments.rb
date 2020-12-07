class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :user, null: false, foreign_key: true
      t.text :body
      t.integer :rating
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end