require 'rails_helper'

RSpec.describe Item, type: :model do
  describe '#create' do
    it "is valid without a name" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("can't be blank")
    end

    it "is valid without a discription" do
      item = build(:item, discription: nil)
      item.valid?
      expect(item.errors[:discription]).to include("can't be blank")
    end

    it "is valid without a price" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("can't be blank")
    end
  end
end