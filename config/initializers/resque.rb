rails_root = ENV['RAILS_ROOT'] || File.dirname(__FILE__) + '/../..'
rails_env = ENV['RAILS_ENV'] || 'development'

resque_config = YAML.load_file(rails_root + '/config/resque.yml')

host,port,db = resque_config[rails_env].split(':')
redis = Redis.new(host: host, port: port, thread_save: true, db: db, timeout: 3.minutes)

Resque.redis = redis
Resque.redis.namespace = "resque:future_test_#{Rails.env}" # separate redis namespace for dev/prod/test environments


# Resque.inline = ENV['RAILS_ENV'] == "test"
