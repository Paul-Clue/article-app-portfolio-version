class Article < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories, foreign_key: :article_id
  has_many :votes, foreign_key: :article_id
end
