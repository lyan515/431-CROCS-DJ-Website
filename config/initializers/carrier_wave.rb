require 'carrierwave/orm/activerecord'
require 'fog'

CarrierWave.configure do |config|
  config.root = Rails.root.join('tmp') # adding these...
  config.cache_dir = 'carrierwave' # ...two lines

  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAI7NRU75PUBCAUREA',                        # required
    :aws_secret_access_key  => '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',                     # required
    :region                 => 'us-east-2',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'avatarpicbucket'                             # required
  config.fog_public     = false                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end