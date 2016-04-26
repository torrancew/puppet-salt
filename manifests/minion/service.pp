class salt::minion::service {
  Class['salt::minion::configure'] ~> Class['salt::minion::service']

  service { 'salt-minion':
    ensure => running,
    enable => true,
  }
}
