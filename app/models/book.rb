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

  def attach_covers(params)
    if (params.present?)
      resize_cover(params)
      webpObj = WebpConverter.generate_attachment_webp(params)
      self.covers.attach(params[:book][:cover])
      self.covers.attach(io: File.open(webpObj.first), filename: webpObj.last, content_type: "image/webp")
      if (self.covers.attached?)
        puts "#{self.title} covers attached".green
        return true
      end

      return false
    end
  end

  def seed_covers(img)
    if (img.present?)
      self.covers.attach(io: File.open("app/assets/images/#{img}"), filename: img, content_type: "image/jpg")
      webpBlob = ActiveStorage::Blob.create_after_upload!(io: File.open("app/assets/images/#{img}.webp"), filename: "#{img}.webp", content_type: "image/webp")
      self.covers.attach(webpBlob)      
      if (self.covers.attached?)
        puts "#{self.title} covers attached".green
        return true
      end

      return false
    end
  end

  private

  def resize_cover(params)
    mini_image = MiniMagick::Image.new(params[:book][:cover].tempfile.path)
    mini_image.resize "200x#{mini_image.height}"
  end
end
