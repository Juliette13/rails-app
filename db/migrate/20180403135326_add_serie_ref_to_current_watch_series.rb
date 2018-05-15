class AddSerieRefToCurrentWatchSeries < ActiveRecord::Migration[5.1]
  def change
    add_reference :current_watch_series, :serie, foreign_key: true
  end
end
