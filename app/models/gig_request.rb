class GigRequest < ActiveRecord::Base
     
     # overrides the id we use to index the request
     # the seed for this hashid MUST be the same as the seeds in gig_requests_controller.
     def to_param
        Hashids.new("calebWillNeverSeeThis").encode(id)
     end
    
     validates :name, presence: true
     validates :address, presence: true
     validates :email, format: { with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i, message: ": Incorrect email format"} #regex that checks is the email is valid
     validates :gig_date, presence: true
     validates :gig_time, presence: true
     validates :gig_duration, numericality: { greater_than: 0,  message: ": Duration must be greather than 1 hour"}
     validates :price, numericality: { greater_than_or_equal_to: 0,  message: ": Prices cannot be negative"}
     
     after_initialize :init
     
     def init
       self.approval ||= false
       self.client_approval ||= false
       self.price ||= 0
     end
end
#