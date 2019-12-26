class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :postal_code, :prefeture, :city, :address, presence: true
end
