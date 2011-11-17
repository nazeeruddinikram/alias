class sudo {
  file {'/etc/sudoers.d/nopasswd':
    ensure => present,
    mode => 0440,
    owner => 'root',
    group => 'root',
    source => "puppet://$servername/modules/sudo/nopasswd",
  }
}
