class CreateBleeptags < ActiveRecord::Migration[5.2]
  def change
    create_table :bleeptags do |t|
      t.text :title

      t.timestamps
    end
  end
end
