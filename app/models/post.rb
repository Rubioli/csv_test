class Post < ActiveRecord::Base
  validates :title, :price, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.010, message: "Can't be less then $0.010" }

  has_many :images
  accepts_nested_attributes_for :images

  after_create :add_price
  private

  def add_price
    self.images.each { |image| image.update_attributes(
        price: self.price
      )
    }
  end

end
