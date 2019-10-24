$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the ...   ...  ...
  # Be sure to return the result at the end!
  result = {}
  column_index = 0
      while column_index < nds.length do
            directors_name = nds[column_index][:name]
            result[directors_name] = 0
            movie_index = 0
              
              while movie_index < nds[column_index][:movies].length do
                  result[:directors_name] += nds[column_index][:movies][movie_index][:worlwide_gross]
                  movie_index += 1
              end
              column_index += 1
      end
      result
end      



