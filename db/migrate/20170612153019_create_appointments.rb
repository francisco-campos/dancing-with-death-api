class CreateAppointments < ActiveRecord::Migration[5.0]
  def change
    create_table :appointments do |t|
      t.boolean :available
      t.string :name
      t.string :email
      t.date :reservation_date
      t.decimal :time_start
      t.decimal :time_end

      t.timestamps
    end
  end
end
