require "json"


module Functions

    def self.extractData(data, key)
        extract = []
        data.each do |d|            
            extract.push(d[key])
        end
        return extract
    end

end