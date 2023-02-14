class Track < ApplicationRecord
  belongs_to :guest

  mount_uploader :file, TrackUploader
  end