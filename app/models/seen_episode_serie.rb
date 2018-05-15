class SeenEpisodeSerie < ApplicationRecord
  belongs_to :episode
  belongs_to :user
end
