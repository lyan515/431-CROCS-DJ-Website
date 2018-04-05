class AddImageToDjPortfolio < ActiveRecord::Migration
  def change
    add_column :dj_portfolio, :pic, :string
  end
end
