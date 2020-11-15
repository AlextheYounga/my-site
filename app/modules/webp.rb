require "webp-ffi"

module Webp
  def self.generate_webps
    image_types = /\.(?:png|jpe?g)$/

    public_assets = File.join(
      Rails.root.join("app", "assets", "images")
    )

    Dir["#{public_assets}/**/*"].each do |filename|
      next unless filename =~ image_types

      mtime = File.mtime(filename)
      webp_file = "#{filename}.webp"
      next if File.exist?(webp_file) && File.mtime(webp_file) >= mtime
      begin
        WebP.encode(filename, webp_file, quality: 80)
        File.utime(mtime, mtime, webp_file)
        puts "Webp converted image #{webp_file}"
      rescue => e
        puts "Webp convertion error of image #{webp_file}. Error info: #{e.message}"
      end
    end
  end
end
