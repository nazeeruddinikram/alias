class tmux {
  package {'tmux':
    ensure => installed,
  }

  file {"${::home}/.tmux.conf":
    ensure => link,
    target => "${::alias_home}/tools/tmux/tmux.conf",
    owner => "${::user_name}",
    group => "${::user_name}",
    require => Package['tmux'],
  }
}
