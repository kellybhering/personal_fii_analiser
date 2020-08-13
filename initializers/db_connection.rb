db_config_file = File.open('database.yml')
db_config = YAML.load(db_config_file)

# TODO: parameterize by environment
ActiveRecord::Base.establish_connection(db_config['development'])
ActiveRecord::Base.logger = ActiveSupport::Logger.new(STDOUT)
