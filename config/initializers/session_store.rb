# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_dogpark_meetup_session',
  :secret      => '95aa8da1c4d1e0b57520666d76ea048a0759dc7b5ad1a5f75e5802d2571651c5d07dcd6f81b1a319bcfece546703972bf3116f4a83966a9212062df1c191eca1'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
