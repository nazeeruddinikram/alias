class gnome {
  package {'gnome-do':
    ensure => installed,
  }

  exec {'make_caps_be_super':
    command => "/bin/su juanibiapina -c \"/usr/bin/gconftool-2 --config-source='xml::/home/juanibiapina/.gconf' --type list --list-type string --set /desktop/gnome/peripherals/keyboard/kbd/options '[terminate	terminate:ctrl_alt_bksp,caps	caps:super]'\"",
  }
}
