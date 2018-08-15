class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :notes, :user, :user_email_no
    rename_column :comments, :user, :user_email_co
  end
end
