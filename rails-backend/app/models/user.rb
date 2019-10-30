class User < ApplicationRecord
  has_many :items, dependent: :destroy, foreign_key: 'seller_id'
end
