class CreateSubscription < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :name
      t.integer :magazine_id
      t.index :magazine_id # lookup optimizations
      t.integer :subscriber_id
      t.index :subscriber_id # lookup optimizations
      t.date :expires_on
    end
  end
end
