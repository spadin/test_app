if ENV["S3_UPLOAD_ENABLED"] == "true"
  Paperclip::Attachment.default_options[:storage] = :s3
  Paperclip::Attachment.default_options[:s3_credentials] = {
    access_key_id: ENV["S3_ACCESS_KEY"],
    secret_access_key: ENV["S3_SECRET_KEY"],
    bucket: ENV["S3_BUCKET"]
  }

  if ENV["S3_HOST_ALIAS"]
    Paperclip::Attachment.default_options[:s3_protocol] = "https"
    Paperclip::Attachment.default_options[:url] = ":s3_alias_url"
    Paperclip::Attachment.default_options[:path] = "/:class/:attachment/:id_partition/:style/:filename"
    Paperclip::Attachment.default_options[:s3_host_alias] = ENV["S3_HOST_ALIAS"]
  end
end
