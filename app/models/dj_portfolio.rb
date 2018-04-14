class DjPortfolio < ActiveRecord::Base
    mount_uploader :avatar, AvatarUploader
    validates :name, presence: true
    validates :facebook_link, format: { with: /(?:https?:\/\/)?(?:www\.)?facebook\.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[\w\-]*\/)*([\w\-\.]*)/, message: ": Incorrect facebook link format"}
    validates :instagram_link, format: { with: /(?:https?:\/\/)?(?:www\.)?instagram\.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[\w\-]*\/)*([\w\-\.]*)/, message: ": Incorrect facebook link format"}
    validates :twitter_link, format: { with: /(?:https?:\/\/)?(?:www\.)?twitter\.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[\w\-]*\/)*([\w\-\.]*)/, message: ": Incorrect facebook link format"}
    validates :soundcloud_link, format: { with: /(?:https?:\/\/)?(?:www\.)?soundcloud\.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[\w\-]*\/)*([\w\-\.]*)/, message: ": Incorrect facebook link format"}
    validates :mixcloud_link, format: { with: /(?:https?:\/\/)?(?:www\.)?mixcloud\.com\/(?:(?:\w)*#!\/)?(?:pages\/)?(?:[\w\-]*\/)*([\w\-\.]*)/, message: ": Incorrect facebook link format"}
end
