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

  gconf {'switch_to_workspace_right':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_right',
    value => '<Mod4>l',
    type => 'string',
  }

  gconf {'switch_to_workspace_left':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_left',
    value => '<Mod4>h',
    type => 'string',
  }

  gconf {'switch_to_workspace_up':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_up',
    value => '<Mod4>k',
    type => 'string',
  }

  gconf {'switch_to_workspace_down':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_down',
    value => '<Mod4>j',
    type => 'string',
  }

  gconf {'switch_to_workspace_1':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_1',
    value => '<Mod4>1',
    type => 'string',
  }

  gconf {'switch_to_workspace_2':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_2',
    value => '<Mod4>2',
    type => 'string',
  }

  gconf {'switch_to_workspace_3':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_3',
    value => '<Mod4>3',
    type => 'string',
  }

  gconf {'switch_to_workspace_4':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_4',
    value => '<Mod4>4',
    type => 'string',
  }

  gconf {'switch_to_workspace_5':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_5',
    value => '<Mod4>5',
    type => 'string',
  }

  gconf {'switch_to_workspace_6':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_6',
    value => '<Mod4>6',
    type => 'string',
  }

  gconf {'switch_to_workspace_7':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_7',
    value => '<Mod4>7',
    type => 'string',
  }

  gconf {'switch_to_workspace_8':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_8',
    value => '<Mod4>8',
    type => 'string',
  }

  gconf {'switch_to_workspace_9':
    key => '/apps/metacity/global_keybindings/switch_to_workspace_9',
    value => '<Mod4>9',
    type => 'string',
  }

  gconf {'run_command_terminal':
    key => '/apps/metacity/global_keybindings/run_command_terminal',
    value => '<Mod4>t',
    type => 'string',
  }
}
