class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :status
      t.date :start_date
      t.date :end_date
      t.integer :total_credits
      t.text :request_message
      t.text :response_message
      t.boolean :response_message_read

      t.timestamps
    end
  end
end
