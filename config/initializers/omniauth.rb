OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '131991162889-fsoljtng6krnqc3v7tvpe9r4ou7vfvmb.apps.googleusercontent.com', '5EZsroKQI5PDGrauPt8Y1gz9', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}

  provider :facebook, '1116739991805782', '01a28eb71a7285540e0ac0f5708e4cf1', {:client_options => {:ssl => {:ca_file => Rails.root.join("cacert.pem").to_s}}}
end

