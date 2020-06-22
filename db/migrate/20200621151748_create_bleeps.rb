class CreateBleeps < ActiveRecord::Migration[5.2]
  def change
    create_table :bleeps do |t|
      t.text :content
      t.integer :user_id
      t.text :img

      t.timestamps
    end
  end
end
