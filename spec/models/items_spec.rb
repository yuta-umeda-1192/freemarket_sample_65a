require 'rails_helper'
describe Item do
  describe '#create' do
    it "is invalid without a name" do
      item = Item.new(name: "", discription: "", price: "")
      item.valid?
      expect(item.errors[:name, :discription, :price]).to include("can't be blank")
    end
  end
end