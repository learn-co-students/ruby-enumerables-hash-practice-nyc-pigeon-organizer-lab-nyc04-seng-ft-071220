require 'pry'

def nyc_pigeon_organizer(data)
  final_results = data.each_with_object({}) {|(key,value),final_array|
  value.each{|inner_key,inner_value|
  inner_value.each{|name|
  if !final_array[name]
    final_array[name] = {}
  end
  if !final_array[name][key]
    !final_array[name][key] = []
  end
  final_array[name][key].push(inner_key.to_s)
}
}
}
end
    
