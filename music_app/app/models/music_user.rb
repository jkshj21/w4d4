# == Schema Information
#
# Table name: music_users
#
#  id              :integer          not null, primary key
#  email           :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#

class MusicUser < ApplicationRecord
  validates :email, :password_digest, presence:true

  

end
