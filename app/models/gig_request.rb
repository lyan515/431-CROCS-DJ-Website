class GigRequest < ActiveRecord::Base
    
     validates :name, presence: true
     validates :address, presence: true
     validates :email, presence: true
     validates :gig_date, presence: true
     validates :gig_time, presence: true
     validates :gig_time, presence: true
     validates :gig_duration, presence: true
     
     after_initialize :init
     
     def init
       self.approval ||= false
     end
end
