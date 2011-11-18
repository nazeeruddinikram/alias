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

  gconf {'set_horizontal_workspaces':
    key => '/apps/compiz-1/general/screen0/options/hsize',
    value => '3',
    type => 'int',
  }
  
  gconf {'set_vertical_workspaces':
    key => '/apps/compiz-1/general/screen0/options/vsize',
    value => '3',
    type => 'int',
  }
}
