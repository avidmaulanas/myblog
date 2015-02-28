# Be sure to restart your server when you modify this file.

# Rails.application.config.session_store :cookie_store, key: '_myblog_session'
Rails.application.config.session_store :cookie_store, key: '_myblog_session', :domain => '.lvh.me'

# heroku
# Rails.application.config.session_store :cookie_store, key: '_myblog_session', :domain => 'whispering-wave-3076.herokuapp.com'