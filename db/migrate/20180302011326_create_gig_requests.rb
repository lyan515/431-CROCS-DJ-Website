class CreateGigRequests < ActiveRecord::Migration
  def change
    create_table :gig_requests do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.date :gig_date
      t.time :gig_time
      t.integer :gig_duration
      t.boolean :light_rent
      t.boolean :speaker_rent
      t.string :dj_preferred
      t.string :dj_actual
      t.boolean :approval


      t.timestamps null: false
    end
  end
end
