FactoryBot.define do
  factory :user do
    first_name {Faker::Name.first_name}
    last_name {Faker::Name.last_name}
    email {Faker::Internet.email}
    ip_address {IPAddr.new(rand(2**32),Socket::AF_INET)}
  end
end
