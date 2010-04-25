# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wcc_session',
  :secret      => '86fcdb8fb0b3a81efd819adbf946702b52977f7be3d4ca1c5b6315e9dfbb7a7aa83fb6bb4a22553356e16d793858833941ced0e4c5a7b579aefbab23a26967ec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
