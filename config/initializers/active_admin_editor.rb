ActiveAdmin::Editor.configure do |config|
   config.s3_bucket = 'ENV["AWS_S3_BUCKET"]'
   config.aws_access_key_id = 'ENV["AWS_ACCESS_KEY_ID"]'
   config.aws_access_secret = 'ENV["AWS_SECRET_ACCESS_KEY"]'
   config.storage_dir = 'uploads'
end
