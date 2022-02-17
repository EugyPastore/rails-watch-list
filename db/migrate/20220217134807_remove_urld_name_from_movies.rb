class RemoveUrldNameFromMovies < ActiveRecord::Migration[6.1]
  def change
    remove_column :movies, :url, :string
  end
end
