# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key    => '_quack_session',
  :secret => '2f31eefde17e1344d0433afa44a2fa34ad33914fbd088aa28404fe3a6d46669d83ab99bda407bd37a360d48e7b67e42ca3193aa2a607779859633a5b8ecca63c'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
