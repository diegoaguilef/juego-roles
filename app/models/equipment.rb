class Equipment < ApplicationRecord
    has_many :configurations, as: :configurable
end
