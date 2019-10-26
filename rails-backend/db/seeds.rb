# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
# Create test users

if !User.exists? || ENV['FORCE_SEED']
  require 'ipaddr'
  User.destroy_all
  Item.destroy_all

  10.times do
    User.create!(
      first_name: Faker::Name.first_name,
      last_name: Faker::Name.last_name,
      email: Faker::Internet.email,
      ip_address: IPAddr.new(rand(2**32),Socket::AF_INET)
    )
  end

  30.times do |n|
    Item.create!(
      seller: User.all.sample,
      name: Faker::DcComics.name,
      description: Faker::DcComics.title,
      images: { 'http://dummyimage.com/149x176.jpg/cc0000/ffffff' }
    )
  end
end
