# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Rails_session',
  :secret      => '0be19e46fd9f8ce61238d6a0f8d2c7cf361836ce552361bfa874c79ad250b9e2b40c49f77152940d0d39e80b7c115778a74020139b380998b951a6717f8b55b6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
