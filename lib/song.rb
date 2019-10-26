class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists.push(artist)
    @@genres.push(genre)
  end

  def self.count
    @@count
  end

  def self.artists
    unique_artists = []
    @@artists.each do |a|
      if not unique_artists.include?(a)
        unique_artists.push(a)
      end
    end
    unique_artists
  end

  def self.genres
    unique_genres = []
    @@genres.each do |g|
      if not unique_genres.include?(g)
        unique_genres.push(g)
      end
    end
    unique_genres
  end

  def genre_count
    @@genres.length
  end

end
