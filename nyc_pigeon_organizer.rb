def nyc_pigeon_organizer(data)
  # write your code here!
 #use a double loop pattern to collect all of the pigeon names
pigeon_array = []

data.each do |nested_key,nested_value|
  #puts nested_key
  nested_value.each do |key, value|
    pigeon_array.push(value)
  end
end
# create a unique array of pigeon names
uniq_pigeon_array = pigeon_array.flatten.uniq

#now comapre each name in the uniq array to what is in our original data structure

pigeon_name_hash = {}
uniq_pigeon_array.each do |pigeon_name|
    #arrays to keep track of attributes
    local_pigeon_color = []
    local_pigeon_gender = []
    local_pigeon_home = []
    #my double hash iteration pattern
    data.each do |key,value|
      value.each do |k,v|
        if v.include?(pigeon_name) && key == :color
          local_pigeon_color.push(k.to_s)
        elsif v.include?(pigeon_name) && key == :gender
          local_pigeon_gender.push(k.to_s)
        elsif v.include?(pigeon_name) && key == :lives
          local_pigeon_home.push(k.to_s)
      end
    end
  end
  #print "#{pigeon_name}'s common colors:",local_pigeon_color, "\n"
  
  #print "#{pigeon_name}'s gender:",local_pigeon_gender, "\n"
  
  #print "#{pigeon_name}'s home:",local_pigeon_home, "\n"

  pigeon_name_hash[pigeon_name] = {
    :color => local_pigeon_color,
    :gender => local_pigeon_gender,
    :lives => local_pigeon_home
  }
end

pigeon_name_hash
end
