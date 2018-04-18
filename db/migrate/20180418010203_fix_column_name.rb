class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :dj_portfolios, :tags, :genres
  end
end
