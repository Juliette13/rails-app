class CreateCurrentWatchSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :current_watch_series do |t|

      t.timestamps
    end
  end
end
