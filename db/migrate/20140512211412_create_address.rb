class CreateAddress < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :line1
      t.string :order_id
      t.index :order_id
    end
  end
end
