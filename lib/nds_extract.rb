require "pry"

$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0 
while director_index < source.length do 
  directors_name = source[director_index]
  result[directors_name[:name]] = gross_for_director(directors_name)
  
  director_index += 1 
end
return result 
end

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
x = 0 
box = []
while x < source.length do 
  list_of_Ds = source[x][:name]
  box << list_of_Ds
 #
  x += 1 
end

return box 

end 

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  #binding.pry
  other_ind = 0  
  di_index = 0
  javalin = 0 
  total = 0 
  
  while total < source[di_index][:movies][other_ind].length do
     names = list_of_directors(source)
     bunch = directors_totals(source)
    hat = []
     while javalin < bunch.length do 
       
       hat << bunch[total[names]]
       binding.pry
       
     
     javalin += 1 
   end
     other_ind += 1 
     di_index += 1 
   end 
   
   
     return total_added
     
end


