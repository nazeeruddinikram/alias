class bash {
  package {'tree':
    ensure => installed,
  }

  package {'highlight':
    ensure => installed,
  }

  file {'/home/juanibiapina/.bashrc':
    ensure => link,
    target => '/home/juanibiapina/development/alias/tools/bash/bashrc',
    owner => 'juanibiapina',
    group => 'juanibiapina',
  }

  file {'/home/juanibiapina/bin':
    ensure => link,
    target => '/home/juanibiapina/development/alias/bin',
    owner => 'juanibiapina',
    group => 'juanibiapina',
  }
}
