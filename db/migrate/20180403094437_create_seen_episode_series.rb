class CreateSeenEpisodeSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :seen_episode_series do |t|
      t.boolean :status, default: false

      t.timestamps
    end
  end
end
