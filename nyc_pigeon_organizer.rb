require 'pry'

def nyc_pigeon_organizer(data)
  # write your code here!
  #binding.pry
  pigeon_list = {}
  data.each do |color_gender_lives, value|# top level |k, v|
    value.each do |stats, all_names|#second level nested
      all_names.each do |name|# third level nested
        if pigeon_list[name] == nil
          pigeon_list[name] = {}
        end
        if pigeon_list[name][color_gender_lives] == nil
          pigeon_list[name][color_gender_lives] = []
        end
        pigeon_list[name][color_gender_lives].push(stats.to_s)
      end
    end 
  end
  pigeon_list
end




