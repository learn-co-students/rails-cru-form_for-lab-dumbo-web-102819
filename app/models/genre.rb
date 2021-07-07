class Genre < ApplicationRecord
    class Artist < ApplicationRecord
        has_many :songs
        has_many :artists  thorugh: :songs 
end
