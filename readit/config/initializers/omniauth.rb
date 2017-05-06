OmniAuth.config.logger = Rails.logger
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '961095994016-13o2d5ucsk3r58n0som4h4eplm1ci4un.apps.googleusercontent.com', 'DVEOPGn0lb1WvJHFqPXgUbQ6', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

end
