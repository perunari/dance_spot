class Event < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  mount_uploader :image, ImageUploader
  validates :name, :address, :content, presence: true
end
