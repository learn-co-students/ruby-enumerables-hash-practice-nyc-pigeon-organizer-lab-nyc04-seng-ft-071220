
  
def nyc_pigeon_organizer(data)
  organized_pigeons = {}
  data.each do |attributes, value|
    value.each do |trait, names|
      names.each do |name|
        
        if !organized_pigeons[name]
          organized_pigeons[name] = {}
        end

        if !organized_pigeons[name][attributes]
          organized_pigeons[name][attributes] = []
        end

        organized_pigeons[name][attributes] << trait.to_s

      end
    end
  end
  organized_pigeons
end





# require "pry"

# def nyc_pigeon_organizer(data)
#     organized_pigeons = {}
#     data.each{|attributes, values|
#         values.each{|trait, names |
#           names.each{|name|


#             if organized_pigeons.include?(name) == false
#                 organized_pigeons[name] = {}
#             end

#             if organized_pigeons[name].include?(attributes) ==     false
#                 organized_pigeons[name][attributes]= []
#             end
#             # binding.pry
#     #0

#             organized_pigeons[name][attributes] << trait.to_s

#         }
     
#     }
#     }
#     binding.pry
#     organized_pigeons
#     binding.pry
#     0
#     0 
    

#   end 