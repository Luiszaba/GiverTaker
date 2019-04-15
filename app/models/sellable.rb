class Sellable < ApplicationRecord
  belongs_to :user
  has_many :products, through: :users
  has_many_attached :images, dependent: destory
end
