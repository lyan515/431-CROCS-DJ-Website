OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '573821608687-mtuc5gpqvg02fjp9f5dju7npfuioksqf.apps.googleusercontent.com', 'JQhx1wSVMztAmGE9Zm9F7DvM', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}, scope: ['userinfo.profile','userinfo.email', 'calendar'], access_type: 'offline', approval_prompt: 'force', prompt: 'consent'}
end