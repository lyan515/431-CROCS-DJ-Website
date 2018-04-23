class AddIvs < ActiveRecord::Migration
  def change
    add_column :gig_requests, :encrypted_name_iv, :string
    add_column :gig_requests, :encrypted_address_iv, :string
    add_column :gig_requests, :encrypted_phone_iv, :string
    add_column :gig_requests, :encrypted_email_iv, :string
  end
end
