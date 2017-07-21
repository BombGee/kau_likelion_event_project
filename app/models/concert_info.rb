class ConcertInfo < ActiveRecord::Base
    #라인업을 가짐
    has_many :lineups
    has_many :comments
end
