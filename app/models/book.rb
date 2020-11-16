require "mini_magick"
require "colorize"

class Book < ActiveRecord::Base
  belongs_to :book_category
  has_one_attached :book_cover

end

