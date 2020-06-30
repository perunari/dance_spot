class Event < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :name, presence: true
  validates :address, presence: true
end
