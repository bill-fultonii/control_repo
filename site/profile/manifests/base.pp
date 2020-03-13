class profile::base {
  file {'/usr/java/':
    ensure => 'directory'
  }
  file {'/usr/java/jdk-13.0.2_linux-x64_bin.tar.gz':
    ensure => present,
    source => '/polk/nas/repo/jdk-13.0.2_linux-x64_bin.tar.gz'
  }
}
