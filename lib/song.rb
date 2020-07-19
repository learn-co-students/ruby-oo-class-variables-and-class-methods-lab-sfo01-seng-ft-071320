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

        @@artists << artist
        @@genres << genre
    end

    class << self
        def count 
            return @@count
        end

        def artists 
            return @@artists.uniq
        end

        def genres
            return @@genres.uniq
        end

        def genre_count
            count = Hash.new(0)
            @@genres.each { |genre| count[genre] += 1}
            return count
        end

        def artist_count
            art_count = Hash.new(0)
            @@artists.each do |artist| art_count[artist] += 1
            end
            return art_count
        end
    end
end