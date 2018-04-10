class CreateDjPortfolios < ActiveRecord::Migration
  def change
    create_table :dj_portfolios do |t|
      t.string :name
      t.string :bio
      t.string :facebook_link
      t.string :instagram_link
      t.string :twitter_link
      t.string :soundcloud_link
      t.string :mixcloud_link
      t.string :avatar

      t.timestamps null: false
    end
  end
end
