class CreateUserforrooms < ActiveRecord::Migration[5.0]
  def change
    create_table :userforrooms do |t|
      t.string :user_email
      t.string :room_id

      t.timestamps
    end
  end
end
