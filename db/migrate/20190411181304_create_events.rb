class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name
      t.date :event_date
      t.time :event_time
      t.string :address
      t.text :description
      t.integer :available
      t.integer :price

      t.timestamps
    end
  end
end
