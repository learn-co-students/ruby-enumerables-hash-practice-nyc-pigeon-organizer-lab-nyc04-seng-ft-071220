require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  new_list = {}
  data.each do |attribute_key, attribute_hash|
    attribute_hash.each do |color_key, names_array|
      names_array.each do |pigeon_name|
        
        if !new_list[pigeon_name] 
          new_list[pigeon_name] = {}
        end
        
        if !new_list[pigeon_name][attribute_key]
          new_list[pigeon_name][attribute_key] = []
        end

        new_list[pigeon_name][attribute_key] << color_key.to_s
        # binding.pry
      end
    end
  end
  new_list
end
