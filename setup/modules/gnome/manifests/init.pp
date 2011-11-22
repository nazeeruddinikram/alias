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

  gconf {'set_desktops':
    key => '/apps/compiz-1/general/screen0/options/number_of_desktops',
    value => '1',
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

  gconf {'run_command_drop_down_term':
    key => '/apps/metacity/global_keybindings/run_command_1',
    value => '<Mod4>n',
    type => 'string',
  }

  gconf {'terminal_scrollback_buffer':
    key => '/apps/gnome-terminal/profiles/Default/scrollback_lines',
    value => '1024',
    type => 'int',
  }
  
  gconf {'hide_terminal_scrollbar':
    key => '/apps/gnome-terminal/profiles/Default/scrollbar_position',
    value => 'hidden',
    type => 'string',
  }

  gconf {'command_1':
    key => '/apps/metacity/keybinding_commands/command_1',
    value => 'toggle -n qterminal -c \"gnome-terminal --hide-menubar -t qterminal\"',
    type => 'string',
  }

  gconf {'close_window':
    key => '/apps/metacity/window_keybindings/close',
    value => '<Super>q',
    type => 'string',
  }

  gconf {'maximize_window':
    key => '/apps/metacity/window_keybindings/toggle_maximized',
    value => '<Super>a',
    type => 'string',
  }

  gconf {'minimize_window':
    key => '/apps/metacity/window_keybindings/minimize',
    value => '<Super>z',
    type => 'string',
  }

  gconf {'enable_compiz_plugins':
    key => '/apps/compiz-1/general/screen0/options/active_plugins',
    value => '[core,bailer,detection,composite,opengl,decor,place,snap,resize,imgpng,mousepoll,commands,compiztoolbox,vpswitch,regex,wall,gnomecompat,session,move,grid,animation,expo,ezoom,staticswitcher,workarounds,fade,scale]',
    type => 'list',
    listtype => 'string',
  }
}
