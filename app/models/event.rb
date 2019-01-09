class Event < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  validates :start_date, presence: true
  validates :start_time, presence: true
  validates :end_date, presence: true
  validates :end_time, presence: true
  validates :venue, presence: true
  validates :address, presence: true
  validates :image, presence: true
  validates :admission_fee, presence: true

  belongs_to :user
  has_many :comments, dependent: :destroy

  mount_uploader :image, ImageUploader
end
