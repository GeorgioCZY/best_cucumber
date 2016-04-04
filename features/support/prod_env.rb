project_features = File.expand_path('../..', __FILE__)
config=YAML.load_file(project_features + '/support/config/prod_config.yml')

BASE_URL = config['base_url']