CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider                  => "AWS",
    :aws_access_key_id         => ENV['AWS_USERNAME'],
    :aws_secret_access_key     => ENV['AWS_PASSWORD'],
    :region                    => "us-east-1"
  }
  
  config.fog_directory = "ocs-yofred"
end