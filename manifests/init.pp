
class filecopy {

  # For Linux: Copy RPM package
  if $facts['os']['family'] == 'RedHat' {
    file { '/tmp/package.rpm':
      ensure => 'present',
      source => 'puppet:///modules/filecopy/files/rpm-4.20.1-1-omv2590.aarch64.rpm',
    }
  }

  # For Windows: Copy EXE package
  elsif $facts['os']['family'] == 'windows' {
    file { 'C:/temp/package.exe':
      ensure => 'present',
      source => 'puppet:///modules/filecopy/files/puppet-agent-7.27.0-x86.msi',
    }
  }
}

#include filecopy


