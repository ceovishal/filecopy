
class filecopy {

  # For Linux: Copy RPM package
  if $facts['os']['family'] == 'RedHat' {
    file { '/home/rpm-4.20.1-1-omv2590.aarch64.rpm':
      ensure => 'present',
      source => 'puppet:///rpmandexes/rpm-4.20.1-1-omv2590.aarch64.rpm',
    }
  }

  # For Windows: Copy EXE package
  elsif $facts['os']['family'] == 'windows' {
    file { 'C:/temp/package.exe':
      ensure => 'present',
      source => 'puppet:///rpmandexes/puppet-agent-7.27.0-x86.msi',
    }
  }
}


