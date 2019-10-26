class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.string :tm_id
      t.string :name

      t.timestamps
    end
    add_index :rooms, :tm_id, unique: true
  end
end
