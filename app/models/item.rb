class Item < ApplicationRecord
  # validates :all, presence: true
  enum delivery_day: {
    "---":0,
    day1:1,
    day2:2,
    day3:3
  }
end