class Artist
    
    
    attr_reader :name

    @@all = []
    
    def initialize(name)
        @name=name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select { |song| song.artist == self }
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def genres
        genre_list = self.songs.map { |song| song.genre }
        genre_list.uniq
    end

end