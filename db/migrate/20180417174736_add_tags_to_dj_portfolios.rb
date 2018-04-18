class AddTagsToDjPortfolios < ActiveRecord::Migration
  def change
    add_column :dj_portfolios, :tags, :string
  end
end
