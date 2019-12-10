class Product < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :category

  # validate :name, :price, :quantity, presence: true
end
