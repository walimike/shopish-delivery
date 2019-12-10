class Product < ApplicationRecord
  before_destroy :not_referenced_by_any_line_item
  mount_uploader :image, ImageUploader
  belongs_to :category
  has_one_attached :product_image
  has_many :lineitems
  # validate :name, :price, :quantity, presence: true

  private

  def not_refereced_by_any_line_item
    unless line_items.empty?
      errors.add(:base, "Line items present")
      throw :abort
    end
  end
end
