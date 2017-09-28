class AddColumnsForTracks < ActiveRecord::Migration[5.1]
  def change
    add_column :tracks, :bonus, :boolean, null:false, default:false
    add_column :tracks, :lyrics, :text, null:false

    add_index :tracks, [:album_id, :ord], unique:true

  end
end
