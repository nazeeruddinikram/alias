class x {
  package {'xterm':
    ensure => installed,
  }

  file {'/home/juanibiapina/.Xresources':
    ensure => link,
    target => '/home/juanibiapina/development/alias/tools/X/Xresources',
    owner => 'juanibiapina',
    group => 'juanibiapina',
    require => Package['xterm'],
  }
}
