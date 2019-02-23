class Movie < ActiveRecord::Base

    #def self.all_ratings
     #  %w(G PG PG-13 NC-17 R) 
    #end
    
    def self.ratings
       Movie.select(:rating).distinct.inject([]){|a, m| a.push m.rating} #create an array from the ratings and pass it back
    end
end
