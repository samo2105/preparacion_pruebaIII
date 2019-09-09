class RemoveFavoriteFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :favorite, :boolean
  end
end
