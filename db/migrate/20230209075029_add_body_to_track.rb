class AddBodyToTrack < ActiveRecord::Migration[7.0]
  def change
    add_column :tracks, :body, :text
  end
end
