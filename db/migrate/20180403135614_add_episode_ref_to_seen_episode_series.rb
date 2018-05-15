class AddEpisodeRefToSeenEpisodeSeries < ActiveRecord::Migration[5.1]
  def change
    add_reference :seen_episode_series, :episode, foreign_key: true
  end
end
