require 'carrierwave/orm/activerecord'
require 'fog'

CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => '',                        # required
    :aws_access_key_id      => '',                        # required
    :aws_secret_access_key  => '',                     # required
    :region                 => '',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'avatarpicbucket'                             # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end