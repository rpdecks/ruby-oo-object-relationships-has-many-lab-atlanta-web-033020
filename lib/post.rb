require 'pry'

class Post

    attr_accessor :author, :title

    @@all = []

    def self.all
        @@all
    end

    def initialize(title, author=nil)
        @title = title
        @author = author
        @@all << self
    end

    def author_name
        # binding.pry
        if self.author
            self.author.name
        else
            nil
        end
    end

end
