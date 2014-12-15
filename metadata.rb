name             'gogobot-logger'
maintainer       'Gogobot Ltd.'
maintainer_email 'avi@gogobot.com'
license          'All rights reserved'
description      'Installs/Configures the logger server'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends 'htpasswd'
depends 'aws'
depends 'java'
depends 'elasticsearch'
depends 'logstash'
depends 'kibana'
