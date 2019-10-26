FactoryBot.define do
  factory :item do
      seller
      name { Faker::DcComics.name }
      description { Faker::DcComics.title }
      images 'http://dummyimage.com/149x176.jpg/cc0000/ffffff'
  end
end
