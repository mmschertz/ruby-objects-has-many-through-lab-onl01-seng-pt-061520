class Artist
    @@all = []
    attr_accessor :name
  
    def initialize(name)
      @name = name
      @@all << self
    end
  
    def self.all
      @@all
    end
  
    def songs
      Song.all.select do |song|
        song.artist == self
      end
    end

    def new_song(title, genre)
        Song.new(title, self, genre)
    end
  
    def genres
      songs.map do |song|
        song.genre
      end
    end
  
  end

# learn --f-f