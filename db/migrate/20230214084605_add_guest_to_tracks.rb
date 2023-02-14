class AddGuestToTracks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tracks, :guest, null: false, foreign_key: true
  end
end
