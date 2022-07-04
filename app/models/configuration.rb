class Configuration < ApplicationRecord
  belongs_to :configurable, polymorphic: true
  belongs_to :user
  belongs_to :character
end
