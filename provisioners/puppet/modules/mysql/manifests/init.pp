class mysql {

	package {  "mysql-server":
		ensure  => present,
		require => Exec['apt-get update'],
	}

	package { "mysql-client":
		ensure  => present,
		require => Package['mysql-server'],
	}

	service { "mysql":
		enable => true,
		ensure => running,
		require => Package["mysql-server"],
	}
}