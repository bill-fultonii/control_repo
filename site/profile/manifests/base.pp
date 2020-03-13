class profile::base {
  $jdk = 'jdk-13.0.2_linux-x64_bin.tar.gz'
  $jdk_path = '/usr/java'

  file {"${jdk_path}":
    ensure => 'directory'
  }
  file {"${jdk_path}/${jdk}":
    ensure => present,
    source => "/polk/nas/repo/${jdk}"
  }
  
  exec { 'extract_java':
    command => "/usr/bin/tar -xzf ${jdk}",
    cwd => "${jdk_path}"
  }
}
