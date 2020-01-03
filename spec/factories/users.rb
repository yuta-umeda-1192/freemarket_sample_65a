FactoryBot.define do

  factory :user do
    nickname              {"abe"}
    email                 {"kkk@gmail.com"}
    password              {"00000000"}
    family_name           {"阿部"}
    first_name            {"慎之介"}
    family_name_kana      {"アベ"}
    first_name_kana       {"シンノスケ"}
    year                  {"2019"}
    month                 {"12"}
    day                   {"29"}
  end
  
end
