require 'yaml'
APP_CONFIG = YAML.load(File.read(Rails.root + '/config/nest_config.yml'))