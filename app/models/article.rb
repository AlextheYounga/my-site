class Article < ActiveRecord::Base
  belongs_to :user
  has_many :article_categories
  has_many :categories, through: :article_categories
  validates :title, presence: true, length: {minimum: 3, maximum: 100}    #this prevents an article from being submitted without a title; this helps maintain data integrity, also must be specific lengths
  validates :user_id, presence: true
end