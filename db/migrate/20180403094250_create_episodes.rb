class CreateEpisodes < ActiveRecord::Migration[5.1]
  def change
    create_table :episodes do |t|
      t.string :identifiant
      t.integer :seasonNumber
      t.integer :episodeNumber
      t.string :title
      t.date :diffusionDate

      t.timestamps
    end
  end
end
