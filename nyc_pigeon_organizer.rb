require 'pry'

def nyc_pigeon_organizer(data)
  data.each_with_object ({}) do |(outer_key, value), pigeon_names|
    value.each do |inner_keys, names|
      names.each do |name|

        if !pigeon_names.include?(name)
          pigeon_names[name] = {}
        end

        if !pigeon_names[name].include?(outer_key)
          !pigeon_names[name][outer_key] = []
        end

        pigeon_names[name][outer_key] << inner_keys.to_s

        # binding.pry
      end     
    end 
  end 
  # binding.pry
end
