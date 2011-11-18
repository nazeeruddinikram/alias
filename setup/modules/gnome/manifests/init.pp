class gnome {
  package {'gnome-do':
    ensure => installed,
  }

  exec {'make_caps_be_super':
    command => "/usr/bin/gconftool-2 --type list --list-type string --set /desktop/gnome/peripherals/keyboard/kbd/options '[terminate	terminate:ctrl_alt_bksp,caps	caps:super]'",
    user => 'juanibiapina',
    group => 'juanibiapina',
  }
}
