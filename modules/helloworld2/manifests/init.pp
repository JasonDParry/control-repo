
class helloworld2 {



  notify {'Hello World TWO!':}

  windowsfeature { 'Telnet-Client':
    ensure => present,
  }

  windowsfeature { 'tftp-client':
    ensure => present,
  }

}
