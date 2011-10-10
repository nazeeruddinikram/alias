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
