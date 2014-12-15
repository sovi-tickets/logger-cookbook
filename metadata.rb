name             'gogobot-logger'
maintainer       'Gogobot Ltd.'
maintainer_email 'avi@gogobot.com'
license          'All rights reserved'
description      'Installs/Configures gogobot-logger'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.36'

depends 'htpasswd'
depends 'aws'
depends 'java'
depends 'elasticsearch'
depends 'logstash'
depends 'kibana'
