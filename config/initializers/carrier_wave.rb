if Rails.env.production?
  CarrierWave.configure do |config|
    

    
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['S3_ACCESS_KEY'],
      :aws_secret_access_key => ENV['S3_SECRET_ACCESS_KEY'],
      :region                 => 'ap-southeast-1'   
    }
    
    ## something
    config.fog_directory     =  ENV['S3_BUCKET']
    config.fog_provider = 'fog/aws'
    config.storage = :fog
    config.fog_use_ssl_for_aws = true
    config.fog_public     = true
    
    
  end
end

