def nyc_pigeon_organizer(data)
  # Create an empty array of pidgeon names
  names = []

  # Add the values (names) from the 'male' and 'female' keys to the pidgeon name array
  for name in data[:gender][:male] + data[:gender][:female]
    names << name
  end

  # Create a new hash with each name as a key using the hash and collect method
  organized_data = Hash[names.collect { |name| [name, {:color => [], :gender => [], :lives => []}] } ]

  data[:color].each do |color, names|
    names.each do |name|
      if organized_data.key?(name)
        organized_data[name][:color] << color.to_s
      end
    end
  end

  data[:gender].each do |gender, names|
    names.each do |name|
      if organized_data.key?(name)
        organized_data[name][:gender] << gender.to_s
      end
    end
  end

  data[:lives].each do |lives, names|
    names.each do |name|
      if organized_data.key?(name)
        organized_data[name][:lives] << lives.to_s
      end
    end
  end
  
  organized_data

end


