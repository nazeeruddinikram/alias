class software {
  package {'xdotool':
    ensure => installed,
  }

  package {'curl':
    ensure => installed,
  }

  package {'compizconfig-settings-manager':
    ensure => installed,
  }
}
