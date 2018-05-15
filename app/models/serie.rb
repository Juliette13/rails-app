class Serie < ApplicationRecord
  has_many :current_watch_serie
  has_many :episodes
end
