class CreateBleepsBleeptags < ActiveRecord::Migration[5.2]
  def change
    create_table :bleeps_bleeptags, :id => false do |t|
      t.integer :bleep_id
      t.integer :bleeptag_id
    end
  end
end
