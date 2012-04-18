class xmodmap {
  file {"${::home}/.xmodmap":
    ensure => link,
    target => "${::alias_home}/tools/xmodmap/xmodmap",
    owner => "${::user_name}",
    group => "${::user_name}",
  }
}
