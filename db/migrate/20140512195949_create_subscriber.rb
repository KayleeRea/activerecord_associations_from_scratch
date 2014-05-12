class CreateSubscriber < ActiveRecord::Migration
  def change
    create_table :subscribers do |t|
      t.string :name
    end
  end
end
