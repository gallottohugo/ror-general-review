class Article < ApplicationRecord
  belongs_to :user
  has_many :category_articles
  #has_many :categories, througt: :category_articles
end
