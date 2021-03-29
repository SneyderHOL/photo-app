if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider => 'AWS',
      :aws_access_key_id => Rails.application.fog_credentials.aws[aws_access_key_id],
      :aws_secret_access_key => Rails.application.fog_credentials.aws[aws_secret_access_key_id],
    }
    config.fog_directory = Rails.application.fog_credentials.aws[s3_bucket_dir]
  end
end
