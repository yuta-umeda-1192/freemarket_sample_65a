class Address < ApplicationRecord
  belongs_to :user, optional: true
  validates :postal_code, :prefeture, :city, :address, :user_id, presence: true
end
