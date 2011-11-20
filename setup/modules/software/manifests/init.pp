class software {
  package {'xdotool':
    ensure => installed,
  }

  package {'curl':
    ensure => installed,
  }
}
