class CreateGigRequests < ActiveRecord::Migration
  def change
    create_table :gig_requests do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.date :gig_date
      t.time :gig_time

      t.timestamps null: false
    end
  end
end
