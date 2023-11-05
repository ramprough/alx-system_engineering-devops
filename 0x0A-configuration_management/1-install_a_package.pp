#Ensure that pip3 is installed

  package { 'python3-pip':
  ensure => installed,
}

#Installs puppet-lint package

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
  require  =>  Package['python3-pip'],
}
