class GigRequest < ActiveRecord::Base
    
     validates :name, presence: true
     validates :address, presence: true
     validates :email, presence: true
     validates :gig_date, presence: true
     validates :gig_time, presence: true
end
