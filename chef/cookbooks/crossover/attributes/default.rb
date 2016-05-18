def random_password
  require 'securerandom'
  SecureRandom.base64
end


default_unless['crossover']['database']['root_password'] = random_password
default_unless['crossover']['database']['admin_password'] = random_password
