class CreateIceCreamOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :ice_cream_orders do |t|
      t.references :user, null: false, foreign_key: true
      t.string :flavor
      t.string :size
      t.boolean :m_and_ms
      t.boolean :peanuts
      t.boolean :sprinkles
      t.boolean :hot_chocolate_fudge

      t.timestamps
    end
  end
end
