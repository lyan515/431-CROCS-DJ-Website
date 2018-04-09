class AddPriceToGigRequests < ActiveRecord::Migration
  def change
    add_column :gig_requests, :price, :float
  end
end
