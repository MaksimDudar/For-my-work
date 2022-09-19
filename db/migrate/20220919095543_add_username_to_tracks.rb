class AddUsernameToTracks < ActiveRecord::Migration[7.0]
  def change
    add_column :tracks, :username, :string
  end
end
