name             'crossover'
maintainer       'YOUR_COMPANY_NAME'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures crossover'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'mysql', '~> 7.0.0'
depends 'selinux', '~> 0.9.0'
depends 'mysql2_chef_gem', '~> 1.1.0'
depends 'database', '~> 5.1.2'
depends 'docker', '~> 2.7.1'
depends 'poise-python', '~> 1.3.0'
