#according to readme, a song belongs to 1 genre and 1 artist
class Song < ActiveRecord::Base
    belongs_to :artist
    belongs_to :genre
end
