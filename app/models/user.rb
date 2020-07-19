class User < ApplicationRecord

  has_many :events
  has_many :favorites, dependent: :destroy
  validates :dancename,:email, uniqueness: true
  validates :dancename,:email, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def already_favorited?(event)
    self.favorites.exists?(event_id: event.id)
  end
end
