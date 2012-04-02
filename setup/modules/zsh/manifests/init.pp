class zsh {
  package {'zsh':
    ensure => installed,
  }

  file {'/home/juanibiapina/.zshrc':
    ensure => link,
    target => '/home/juanibiapina/development/alias/tools/zsh/zshrc',
    owner => 'juanibiapina',
    group => 'juanibiapina',
    require => Package['zsh'],
  }
}
