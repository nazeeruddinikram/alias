class git {
  package {'git':
    ensure => installed,
  }

  file {'/home/juanibiapina/.gitconfig':
    ensure => link,
    target => '/home/juanibiapina/development/alias/tools/git/gitconfig',
    owner => 'juanibiapina',
    group => 'juanibiapina',
    require => Package['git'],
  }
  
  file {'/home/juanibiapina/.gitignore':
    ensure => link,
    target => '/home/juanibiapina/development/alias/tools/git/gitignore',
    owner => 'juanibiapina',
    group => 'juanibiapina',
    require => Package['git'],
  }
}
