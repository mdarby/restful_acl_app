# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_restful_acl_app_session',
  :secret      => '5564c53ab6bac23089ce0af96e72d7e49b1a1844ab13619a93420d1967bbf7b8c4154e9c63555305ec24d3b2952c877e2a18b428ec6db4eea6fc52fdad939636'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
