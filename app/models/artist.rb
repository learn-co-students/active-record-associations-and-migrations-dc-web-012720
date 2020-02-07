#an artist has many songs
#an artist has many genres through songs.
#below we are essentially typing macros
class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs
end
