class ChangePosterMovies < ActiveRecord::Migration[6.1]
  def change
    rename_column :movies, :poster, :poster_url
  end
end
