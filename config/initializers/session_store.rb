if Rails.env == "production"
Rails.application.config.session_store :cookie_store, key: "_authentication", domain:"https://api-trmnl.herokuapp.com/"
else
    Rails.application.config.session_store :cookie_store, key: "_authentication"
end