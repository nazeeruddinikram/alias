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

  file {'/home/juanibiapina/.config/autostart/devilspie.desktop':
    ensure => present,
    owner => 'juanibiapina',
    group => 'juanibiapina',
    require => Package['devilspie'],
    source => "puppet://$servername/modules/devilspie/devilspie.desktop",
  }
}
