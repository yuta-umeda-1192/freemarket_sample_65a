class Image < ApplicationRecord
  mount_uploader :src, ImageUploader
  belongs_to :item
  validates :src, presence: true
  has_many :cards
end