class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :category
  has_one_attached :product_image
  # validate :name, :price, :quantity, presence: true
end
