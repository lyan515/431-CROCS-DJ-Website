class GigRequest < ActiveRecord::Base
    
     validates :name, presence: true
end
