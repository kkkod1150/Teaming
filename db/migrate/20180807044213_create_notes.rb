class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.string :content
      t.string :user_email
      t.belongs_to :user, foreign_key: true
      t.timestamps
    end
  end
end
