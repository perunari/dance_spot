class Event < ApplicationRecord
  belongs_to :genre
  belongs_to :user
  has_many :favorites, dependent: :destroy

  mount_uploader :image, ImageUploader
  validates :name, :address, :content, presence: true
end
