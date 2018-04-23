class EncryptColumnNames < ActiveRecord::Migration
  def change
    rename_column :gig_requests, :name, :encrypted_name
    rename_column :gig_requests, :address, :encrypted_address
    rename_column :gig_requests, :phone, :encrypted_phone
    rename_column :gig_requests, :email, :encrypted_email
  end
end
