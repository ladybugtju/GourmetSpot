CarrierWave.configure do |config|

  	config.storage    = :aws
  	config.aws_bucket = ENV['S3_BUCKET_NAME']
  	config.aws_acl    = :public_read
  	# config.asset_host = ''
  	# config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

  	config.aws_credentials = {
    	access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
    	secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
  	}

    #:provider              => 'AWS',                        # required
    #:aws_access_key_id     => ENV['aws_access_key_id'],                        # required
    #:aws_secret_access_key => ENV['aws_secret_access_key'],   
    #:path_style  =>  true                     # required
      
  #config.fog_directory  = ENV['fog_directory']                          # required
 
end

