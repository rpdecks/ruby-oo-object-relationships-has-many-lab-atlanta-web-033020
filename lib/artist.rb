require 'pry'

class Artist

attr_accessor :name

def initialize(name)
    @name = name
end

def songs
    Song.all.select do |song|
        song.artist == self
    end
end

def add_song(name)
    Song.all.each do |song|
        if song.name = name
            song.artist = self
        end
    end    
end

def add_song_by_name(name)
    new_song = Song.new(name)
    new_song.artist = self
    new_song
end

def self.song_count
     Song.all.count {|song| song.artist = self}
end

end