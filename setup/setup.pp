package {'vim':
  ensure => installed,
}

file {'/home/juanibiapina/.vim':
  ensure => link,
  target => '/home/juanibiapina/development/alias/tools/vim',
  require => Package['vim'],
}

file {'/home/juanibiapina/.vimrc':
  ensure => link,
  target => '.vim/vimrc',
  require => Package['vim'],
}
