class AddSoundToMusics < ActiveRecord::Migration
  def change
    add_column :musics, :sound, :string
  end
end
