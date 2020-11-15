require "mini_magick"
require "colorize"
load "app/modules/webp.rb"

class Book < ActiveRecord::Base
  belongs_to :book_category
  has_one_attached :book_cover
  after_save :resize_image, :generate_webp_on_save

  private

  def resize_image
    size = 200
    assets = File.join(File.join(Rails.root.join("app", "assets", "images"))) #put images in lib/assets
    filename = "#{assets}/#{self.image_address}"
    if (File.exist?(filename))
      image = MiniMagick::Image.open(filename)
      image.path

      if (image.width == size)
        return
      end

      if (image.width < size)
        flash[:alert] = "Image is smaller than recommended. Image width: #{image.width}"
      end

      image.resize "#{size}x#{image.height}"
      image.format File.extname(filename)
      output = File.join(Rails.root.join("lib", "assets", "#{filename}"))
      image.write output
      puts "#{output} write".green
    end
  end

  def generate_webp_on_save
    assets = File.join(File.join(Rails.root.join("app", "assets", "images"))) #put images in lib/assets
    filename = "#{assets}/#{self.image_address}"
    webp_version = "#{File.basename(filename)}.webp"
    if (File.exist?("#{assets}/#{webp_version}"))
      return
    else
      Webp.generate_webps
    end
  end
end
