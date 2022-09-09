class CreateTracks < ActiveRecord::Migration[7.0]

  def change
    create_table :tracks do |t|
      t.string :pl
      t.string :truck_by
      t.string :driver_by
      t.string :perecep
      t.string :truck_rus
      t.string :driver_rus
      t.string :semi_trailer
      t.string :country

      t.timestamps
    end
  end

end
