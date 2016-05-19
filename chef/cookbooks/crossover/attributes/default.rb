def random_password
  require 'securerandom'
  SecureRandom.base64
end


default_unless['crossover']['database']['root_password'] = 'yagg27'
default_unless['crossover']['database']['admin_password'] = 'icinga'
default['crossover']['database']['dbname'] = 'icinga'
default['crossover']['database']['host'] = '127.0.0.1'
default['crossover']['database']['root_username'] = 'root'
default['crossover']['database']['icinga_password'] = 'icinga'

default['crossover']['database']['web_dbname'] = 'icingaweb_db'
default['crossover']['database']['web_icinga_user'] = 'icingaweb'
default['crossover']['database']['web_icinga_password'] = 'icingaweb'

default['crossover']['aws']['AWS_SECRET_ACCESS_KEY'] = 'yy'
default['crossover']['aws']['AWS_KEY_ID'] = 'xxx'
default['crossover']['aws']['AWS_DEFAULT_REGION'] = 'sa-east-1'
 
default['crossover']['db']['admin_user'] = 'root'
default['crossover']['db']['admin_password'] = 'xover'
default['crossover']['db']['host'] = '127.0.0.1'
default['crossover']['db']['s3_bucket'] = 'crossover-sa-east-1'

default['crossover']['log']['s3_bucket'] = 'crossover-sa-east-1'
