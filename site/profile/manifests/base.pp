class profile::base {
  file {'/usr/java/':
    ensure => 'directory'
  }  
}
