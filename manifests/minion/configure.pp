class salt::minion::configure(
  $master = "salt.${::domain}",
) {
  Class['salt::minion::install'] -> Class['salt::minion::configure']

  file { '/etc/salt/minion':
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => template('salt/minion.erb'),
  }
}
