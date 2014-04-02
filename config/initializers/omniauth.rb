Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '558830617548248', '3385bdd183baf315b9303456f4b4b788'
end
