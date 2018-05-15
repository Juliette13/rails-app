class Episode < ApplicationRecord 
  belongs_to :serie
  has_many :seen_episode_serie
  has_many :mark
end
