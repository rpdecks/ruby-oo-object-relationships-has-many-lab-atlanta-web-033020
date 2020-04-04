require 'pry'

class Author
    
    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def posts
        Post.all.select { |post| post.author == self}
    end

    def add_post(post)
        Post.all.each do |post|
            if post.title = post
                post.author = self
            end
        end
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
    end

    def self.post_count
        Post.all.count {|post| post.author = self}
    end

end
