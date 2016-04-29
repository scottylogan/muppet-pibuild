# Class: pibuild
class pibuild {

  package {
    [
      # general build tools
      'build-essential',

      # Docker
      'docker',

      # Debian Packaging
      'devscripts',
      'debhelper',
      'debian-builder',
      'debmake',
      'debmirror',
      'deborphan',
      'debootstrap',
      'git-buildpackage',
      'npm2deb',
      'dput',
      'reprepro',
      
      # Java (mostly for Jenkins)
      'openjdk-7-jre-headless',
      'javahelper',
      'maven',
      'maven-debian-helper',

      # Python
      'python-pip',

      # PHP
      'php5-cli',
      'php5-dev',
      'php5-mysql',
      'php-pear',

      # Node
      'nodejs',

      # Databases
      'mysql-client',
      'redis-tools',
      'manpages-dev',
      'patch',
      'patchutils',
      'strace',
      
      # AVR / Arduino
      'arduino-core',
      'arduino-mk',
      'avr-libc',
      'avra',
      'avrdude',
      'avrdude-doc',
      'binutils-avr',
      'gcc-avr',
      'simulavr',

    ]:
    ensure => latest,
  }
  
  file { '/data/build':
    ensure => directory,
    owner  => 'root',
    group  => 'dev',
    mode   => '02755',
  }

  file { '/data/src':
    ensure => directory,
    owner  => 'root',
    group  => 'dev',
    mode   => '02755',
  }

  file { '/data/tarballs':
    ensure => directory,
    owner  => 'root',
    group  => 'dev',
    mode   => '02755',
  }

  Group <| tag == dev |>
  User  <| tag == dev |>
}
