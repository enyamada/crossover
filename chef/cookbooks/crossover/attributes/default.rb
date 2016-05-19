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
