class DjPortfolio < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
end
