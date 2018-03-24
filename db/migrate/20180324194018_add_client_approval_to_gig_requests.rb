class AddClientApprovalToGigRequests < ActiveRecord::Migration
  def change
    add_column :gig_requests, :client_approval, :boolean
  end
end
