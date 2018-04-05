class AddImageToDjPortfolio < ActiveRecord::Migration
  def change
    add_column :dj_portfolios, :pic, :string
  end
end
