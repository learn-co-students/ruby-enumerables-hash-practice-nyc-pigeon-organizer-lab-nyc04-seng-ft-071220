
require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  data.each do |pigeons,info|
    info.each do |description,name|
      
      name.each do |array_index|
        if new_hash.key?(array_index) != true
            new_hash[array_index] = {:color => []}
            new_hash[array_index][:gender] = []
            new_hash[array_index][:lives] = []
        end
        
        if pigeons == :color
          new_hash[array_index][:color] << description.to_s
        elsif pigeons == :gender
        new_hash[array_index][:gender] << description.to_s
        elsif pigeons == :lives
          new_hash[array_index][:lives] << description.to_s
        end
        
        

      end
    end
  end
  new_hash
end
