class emacs {
  file {'/home/juanibiapina/.emacs.d':
    ensure => link,
    target => '/home/juanibiapina/development/alias/tools/emacs/emacs.d',
    owner => 'juanibiapina',
    group => 'juanibiapina',
  }
}
