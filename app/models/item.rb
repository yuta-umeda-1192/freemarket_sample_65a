class Item < ApplicationRecord
  has_many :images
  accepts_nested_attributes_for :images,  allow_destroy: true
  has_many :images, dependent: :destroy
  validates :name, :discription, :price, presence: true
  # validates :name,  length: { maximum: 40 }
  # validates :discription, length: { maximum: 1000 }
  # validates :price, numericality:{only_integer:true, greater_than: 300, less_than: 9,999,999}
  # belongs_to :delivery_area
  # belongs_to :size
  # belongs_to :item_status
  # belongs_to :brand
  belongs_to :user
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