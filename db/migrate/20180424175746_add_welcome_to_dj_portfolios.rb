class AddWelcomeToDjPortfolios < ActiveRecord::Migration
  def change
    add_reference :dj_portfolios, :welcome, index: true, foreign_key: true
  end
end
