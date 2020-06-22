class CreateBleepsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :bleeps_users, :id => false do |t|
      t.integer :bleep_id
      t.integer :user_id
    end
  end
end
