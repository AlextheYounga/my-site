require "mini_magick"
require "colorize"

class Book < ActiveRecord::Base
  belongs_to :book_category
  has_many_attached :covers

  def cover_urls
    return unless self.covers.attachments
    urls = self.covers.attachments.map do |cover|
      Rails.application.routes.url_helpers.rails_blob_path(cover, only_path: true)
    end
    urls
  end

  def get_webp_attachment
    self.covers.each do |cover|
      type = cover.blob.content_type
      if (type == "image/webp")
        return cover
        # return Rails.application.routes.url_helpers.rails_blob_path(cover, only_path: true)
      end
    end
    return false
  end

  def get_jpeg_attachment
    self.covers.each do |cover|
      type = cover.blob.content_type
      if (type == "image/jpeg")
        return cover
        # return Rails.application.routes.url_helpers.rails_blob_path(cover, only_path: true)
      end
    end
    return false
  end
end
