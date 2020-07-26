require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  info_keys = data.keys
  #1st lvl keys [:color, :gender, :lives]
  names_key = data[:gender][:male] + data[:gender][:female]  
  names_key.each do |name| 
    pigeon_list[name] = {
      :color => [],
      :gender => [],
      :lives => []
    }
    info_keys.each do |info_key|
      if info_key == :color
      data_keys = data[info_key].keys
      #2st lvl keys [:purple, :grey, :white, :brown]
      data_keys.each do |data_key| 
        if data[info_key][data_key].any?(name) 
          pigeon_list[name][:color].push(data_key.to_s)
        end
      end

      elsif info_key == :gender
      data_keys = data[info_key].keys
      #2st lvl keys [:male, :female]
      data_keys.each do |data_key| 
        if data[info_key][data_key].any?(name) 
          pigeon_list[name][:gender].push(data_key.to_s)
        end
      end

      elsif info_key == :lives
      data_keys = data[info_key].keys
      #2st lvl keys [:Subway, :Central Park, :Library, :City Hall]
      data_keys.each do |data_key| 
        if data[info_key][data_key].any?(name) 
          pigeon_list[name][:lives].push(data_key.to_s)
        end
      end
              
      end

    end

    #binding.pry
    
  end

  pigeon_list
  # binding.pry
  
end
