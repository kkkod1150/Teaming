class CreateSoccerCh1s < ActiveRecord::Migration[5.0]
  def change
    create_table :soccer_ch1s do |t|
      
      t.string :room_name
      t.string :site
      t.string :date

      t.timestamps
    end
  end
end
