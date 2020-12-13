class Product < ApplicationRecord
  has_many :comments
  validates :name, length: { minimum: 2 }
  validates :description, length: { maximum: 200 }
  validates :price, numericality: { greater_than_or_equal_to: 0 }

  self.per_page = 4

  def self.search(search_term)
    if Rails.env.production?
      Product.where("name ilike ?", "%#{search_term}%")
    else
      Product.where("name LIKE ?", "%#{search_term}%")
    end
  end

  def highest_rating_comment
    comments.rating_desc.first
  end

  def lowest_rating_comment
    comments.rating_asc.first
  end

  def average_rating
    comments.average(:rating).to_f
  end

end
