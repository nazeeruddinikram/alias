class zsh {
  package {'zsh':
    ensure => installed,
  }

  file {"${::home}/.zshrc":
    ensure => present,
    content => template("${::alias_home}/setup/template/zshrc.erb"),
    owner => "${::user_name}",
    group => "${::user_name}",
    replace => no,
    require => Package['zsh'],
  }
}
