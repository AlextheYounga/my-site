require "json"

module LanguageStats
  def self.calculateWidths
    langs = Rails.cache.fetch("repo_langs")
    if (langs.nil? == false)
      total = langs.values.sum
      widths = {}
      langs.each do |lang, val|
        if ((val.to_f.is_a?(Float) && total.to_f.is_a?(Float)) && (val > 0 && total > 0))
          width = ((val.to_f / total.to_f) * 100).round(2)
          widths[lang] = width
        end
      end
      return widths
    end
  end

  def self.slugifyLanguage(string)
    if (string.include? "+")
      string.gsub("+", "plus")
    end
    return string.parameterize
  end
end
