class User < ApplicationRecord

  has_many :events
  validates :dancename,:email, uniqueness: true
  validates :dancename,:email, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
