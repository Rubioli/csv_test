class Image < ActiveRecord::Base
  validates :title, :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.010, message: "Can't be less then $0.010" }

  belongs_to :post
end
