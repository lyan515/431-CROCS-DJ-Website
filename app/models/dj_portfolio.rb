class DjPortfolio < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
    validates :name, presence: true
    serialize :genres, Array
end
