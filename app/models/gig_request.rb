class GigRequest < ActiveRecord::Base
     
     # overrides the id we use to index the request
     # the seed for this hashid MUST be the same as the seeds in gig_requests_controller.
     def to_param
        Hashids.new("calebWillNeverSeeThis").encode(id)
     end
    
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
       self.client_approval ||= false
     end
end
