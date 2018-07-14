OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1867307929960486', 'ae2eb3dedac0bff987a88836a3711cb7'
end