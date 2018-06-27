class Seguro < ApplicationRecord
  belongs_to :user
  belongs_to :carteira
  mount_uploader :foto, PhotoUploader

end
