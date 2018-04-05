class AddAvatarToDjPortfolio < ActiveRecord::Migration
  def change
    add_column :dj_portfolios, :avatar, :string
  end
end
