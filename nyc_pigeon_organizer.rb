require 'pry'


def nyc_pigeon_organizer(data)
  # write your code here!
  
 
  final_results = data.each_with_object({}) do |(key, value), final_array|
    

   value.each do |color_key, pigeon_names|
      pigeon_names.each do |name|
      #
  #if our name does not exist then lets do something
  #lets create the names of the pigeon
      if !final_array[name]
        final_array[name] = {}
      end

#color is our key. the value of key color is an arrayyyy 
#we create an array if its not there 
      if !final_array[name][key]
        !final_array[name][key] = []


      end
      final_array[name][key].push(color_key.to_s)
    end
  end 
      #
  end 
  #binding.pry
end

#use pry
#go through the enumerables
