class screen {
  package {'screen':
    ensure => installed,
  }

  file {'/home/juanibiapina/.screenrc':
    ensure => link,
    target => '/home/juanibiapina/development/alias/tools/screen/screenrc',
    owner => 'juanibiapina',
    group => 'juanibiapina',
    require => Package['screen'],
  }
}
