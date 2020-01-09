class ItemCategory < ApplicationRecord
  has_ancestry
  has_many :items
end