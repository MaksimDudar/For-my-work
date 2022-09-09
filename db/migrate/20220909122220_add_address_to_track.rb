class AddAddressToTrack < ActiveRecord::Migration[7.0]
  def change
    add_column :tracks, :pl2, :string
    add_column :tracks, :perecep2, :string
  end
end
