class Category < ApplicationRecord
  has_many :category_articles
  #has_many :articles, througt: :category_articles
end
