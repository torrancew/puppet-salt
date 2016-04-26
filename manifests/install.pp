class salt::install {
  package { 'salt-zmq':
    ensure => installed,
  }
}
