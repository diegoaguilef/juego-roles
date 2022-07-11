sidekiq_config = {}

if Rails.env.production?
  sidekiq_config = { url: "redis://#{ENV['REDIS_HOST']}:#{ENV['REDIS_PORT']}", namespace: "roles-#{Rails.env}" }
elsif Rails.env.development?
  sidekiq_config = { url: 'redis://localhost:6379', namespace: "roles-#{Rails.env}" }
end

Sidekiq.configure_server do |config|
  config.redis = sidekiq_config
end

Sidekiq.configure_client do |config|
  config.redis = sidekiq_config
end
