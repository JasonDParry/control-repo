
class helloworld2 {



  notify {'Hello World TWO!':}

  windowsfeature { 'NET-Framework-Core':
    ensure => present,
  }

}
