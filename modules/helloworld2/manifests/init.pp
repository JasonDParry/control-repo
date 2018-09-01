
class helloworld2 {



  notify {'Hello World TWO!':}

  windowsfeature { 'Telnet-Client':
    ensure => present,
  }

  windowsfeature { 'tftp-client':
    ensure => absent,
  }
 
   windowsfeature { 'Windows-Defender-Features':
    ensure => absent,
  }
 
 
exec { 'set-timezone':
  command   => 'Set-TimeZone -id \'W. Australia Standard Time\'',
  unless    => 'if ((get-TimeZone).id -ne \'W. Australia Standard Time\') {exit 0}',
  provider  => powershell,
  logoutput => true,
}
 
}
