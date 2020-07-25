require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  final_results = data.each_with_object({}) do |(key, value), final_hash|
    value.each do |inner_key, pigeons|
      pigeons.each do |pigeon|
        if !final_hash[pigeon]
          final_hash[pigeon] = {}
        end
        if !final_hash[pigeon][key]
          final_hash[pigeon][key] = []
        end
        final_hash[pigeon][key].push(inner_key.to_s)
      end
    end
  end
end
