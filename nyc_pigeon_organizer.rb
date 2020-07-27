require 'pry'

def nyc_pigeon_organizer(data)
  # Access the pigeon data by going into the inner hash and accessing the key and value pairs i.e :color =>
  # :purple=> [], 
  # once you have accessed the data, find a way to filter/ reduce the values into a hash with the collection 
  # of all the names of the pigeons and the corresponding key to be put into a has
  # write your code here!
  pigeon_list=data.each_with_object({}) do |(key,value), new_hash|
    value.each do |inner_key, names|
      names.each do |bird|
        if !new_hash[bird]
          new_hash[bird]={}
        end
        if !new_hash[bird][key]
          new_hash[bird][key]=[]
        end
        new_hash[bird][key].push(inner_key.to_s)
      end
    end
    new_hash
  end

  pigeon_list
  
end
