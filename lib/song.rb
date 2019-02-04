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
    @@genres.each do |i|
      if @@genre_count.keys.include?(i)
         @@genre_count[i] += 1
          
      else
        @@genre_count = {i => 1}
      end
    end
    @@genre_count 
  end
  
  
end