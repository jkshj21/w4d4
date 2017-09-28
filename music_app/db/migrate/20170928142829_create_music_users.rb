class CreateMusicUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :music_users do |t|
      t.string :email, null:false
      t.string :password_digest, null:false
      t.string :session_token, null:false
    end
    add_index :music_users, :email, unique:true

  end
end
