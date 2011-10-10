class vim {
  package {'vim':
    ensure => installed,
  }

  file {'/home/juanibiapina/.vim':
    ensure => link,
    target => '/home/juanibiapina/development/alias/tools/vim',
    owner => 'juanibiapina',
    group => 'juanibiapina',
    require => Package['vim'],
  }

  file {'/home/juanibiapina/.vimrc':
    ensure => link,
    target => '.vim/vimrc',
    owner => 'juanibiapina',
    group => 'juanibiapina',
    require => Package['vim'],
  }
}
