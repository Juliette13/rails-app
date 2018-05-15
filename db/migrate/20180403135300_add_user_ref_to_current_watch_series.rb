class AddUserRefToCurrentWatchSeries < ActiveRecord::Migration[5.1]
  def change
    add_reference :current_watch_series, :user, foreign_key: true
  end
end
