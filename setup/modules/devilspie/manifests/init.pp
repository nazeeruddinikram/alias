class devilspie {
  package {'devilspie':
    ensure => installed,
  }

  file {'/home/juanibiapina/.devilspie':
    ensure => link,
    target => '/home/juanibiapina/development/alias/tools/devilspie/',
    owner => 'juanibiapina',
    group => 'juanibiapina',
    require => Package['devilspie'],
  }

  file {'autostart_dir':
    path => '/home/juanibiapina/.config/autostart',
    ensure => directory,
    owner => juanibiapina,
    group => juanibiapina,
  }

  file {'/home/juanibiapina/.config/autostart/devilspie.desktop':
    ensure => present,
    owner => 'juanibiapina',
    group => 'juanibiapina',
    source => "puppet://$servername/modules/devilspie/devilspie.desktop",
    require => [ Package['devilspie'], File['autostart_dir'] ],
  }
}
