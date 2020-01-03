FactoryBot.define do

  factory :image do
    src             {File.open("#{Rails.root}/public/uploads/image/1/016-04194.jpg")}
  end

end