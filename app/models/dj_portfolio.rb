class DjPortfolio < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
    belongs_to :welcome
    validates :name, presence: true
    serialize :genres, Array
    
    after_initialize :init
     
    def init
      self.welcome_id ||= 4
    end
end
