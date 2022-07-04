class Race < ApplicationRecord
    has_many :powers
    has_many :skills
    has_many :characters
end