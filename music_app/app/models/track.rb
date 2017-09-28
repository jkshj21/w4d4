# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  album_id   :integer          not null
#  title      :string           not null
#  ord        :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  bonus      :boolean          default(FALSE), not null
#  lyrics     :text             not null
#

class Track < ApplicationRecord

  belongs_to :album,
    class_name: 'Album',
    foreign_key: :album_id


end
