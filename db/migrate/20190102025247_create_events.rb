class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.string :title
      t.date :start_date
      t.time :start_time
      t.date :end_date
      t.time :end_time
      t.string :venue
      t.string :address
      t.string :image
      t.string :description
      t.integer :admission_fee

      t.timestamps
    end
  end
end
