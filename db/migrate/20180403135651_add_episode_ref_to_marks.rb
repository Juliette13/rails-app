class AddEpisodeRefToMarks < ActiveRecord::Migration[5.1]
  def change
    add_reference :marks, :episode, foreign_key: true
  end
end
