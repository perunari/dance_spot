class Event < ApplicationRecord
  belongs_to :genre
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :address, presence: true
end
