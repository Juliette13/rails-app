class AddUserRefToSeenEpisodeSeries < ActiveRecord::Migration[5.1]
  def change
    add_reference :seen_episode_series, :user, foreign_key: true
  end
end
