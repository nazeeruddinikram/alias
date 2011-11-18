define gconf(
  $type,
  $listtype = 'none',
  $key,
  $value
) {

  if $listtype == 'none' {
    $listtypecmd = ''
  } else {
    $listtypecmd = "--list-type ${listtype}"
  }

  exec {"${title}":
    command => "/bin/su juanibiapina -c \"/usr/bin/gconftool-2 --config-source='xml::/home/juanibiapina/.gconf' --type ${type} ${listtypecmd} --set ${key} '${value}'\"",
  }
}
