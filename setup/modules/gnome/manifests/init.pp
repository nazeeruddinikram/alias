class gnome {
  package {'gnome-do':
    ensure => installed,
  }

  gconf {'make_caps_be_super':
    key => '/desktop/gnome/peripherals/keyboard/kbd/options',
    value => '[terminate	terminate:ctrl_alt_bksp,caps	caps:super]',
    type => 'list',
    listtype => 'string',
  }
}
