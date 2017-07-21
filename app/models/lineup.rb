class Lineup < ActiveRecord::Base
    #concert에 종속
     belongs_to :concert_info
end
