class CreateDeliveryHistories < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_histories do |t|
      t.date :delivery_month
      t.integer :plan
      t.integer :send_count
      t.integer :total_amount

      t.timestamps
    end
  end
end
