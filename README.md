# Art Share API

The goal is to build an application to store, share, and comment on artwork, as well as search for users.
As extra added functionality, it is possible to like artworks and comments, favorite/unfavorite artworks, as well as add/remove artworks to/from artwork collections.

# Application environment

Rails version             5.2.4.3
Ruby version              2.5.1-p57 (x86_64-linux)
RubyGems version          2.7.6
Rack version              2.2.3
JavaScript Runtime        Node.js (V8)
Middleware                Rack::Sendfile, ActionDispatch::Static, ActionDispatch::Executor, ActiveSupport::Cache::Strategy::LocalCache::Middleware, Rack::Runtime, Rack::MethodOverride, ActionDispatch::RequestId, ActionDispatch::RemoteIp, Sprockets::Rails::QuietAssets, Rails::Rack::Logger, ActionDispatch::ShowExceptions, WebConsole::Middleware, ActionDispatch::DebugExceptions, ActionDispatch::Reloader, ActionDispatch::Callbacks, ActiveRecord::Migration::CheckPending, ActionDispatch::Cookies, ActionDispatch::Session::CookieStore, ActionDispatch::Flash, ActionDispatch::ContentSecurityPolicy::Middleware, Rack::Head, Rack::ConditionalGet, Rack::ETag, Rack::TempfileReaper
Environment               development
Database adapter          postgresql
Database schema version   20200923123747

# Database initialization

rails db:setup will create the database, load the schema, and initialize with the seed data.

# Deployment instructions

Navigate to the project directory and run rails s to start the server

Open http://localhost:3000 to view it in the browser or test the API endpoints with https://www.postman.com/.
