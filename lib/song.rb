class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genres = []
  @@genre_count = {}
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def self.count 
    @@count
  end
  
  def self.artists
    @@artists.uniq 
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
     @@genres.uniq.each do |i|
       if @@genres.keys.include?(@genre) == false
          @@genre_count = {@genre => 1}
       else
         @@genre_count[@genre]= +=1
       end
     end
    
  end
  
  
end