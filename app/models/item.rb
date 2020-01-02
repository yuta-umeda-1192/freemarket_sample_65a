class Item < ApplicationRecord
  has_many :images
  accepts_nested_attributes_for :images,  allow_destroy: true
  has_many :images, dependent: :destroy
  validates :name, presence: true, length: { maximum: 20 }
  # belongs_to :delivery_area
  # belongs_to :size
  # belongs_to :item_status
  # belongs_to :brand
  # belongs_to :user
  # belongs_to :buyer
  # belongs_to :delivery_area
  # belongs_to :item_category
  # validates :all, presence: true

  # enum delivery_burden_fee:{
  #   '---': 0,
  #   no1: 1,
  #   no2: 2
  # }
end