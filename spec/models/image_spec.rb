require 'rails_helper'

describe Image do
  describe '#create' do

    it "is valid without a src" do
      image = build(:image, src: nil)
      image.valid?
      expect(image.errors[:src]).to include("can't be blank")
    end

  end
end