class profile::ssh {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCzqCYTG7UH4I5Ou24kkQ6ggPAp0RyiqQtWnwEjUomoNHAn+lzuqnbiZVHeAuiCuOzGpUvEkk5foZnreauNEgWod067uhtFSAtYzdanJeu4sylkIKEmZhTJzVjev8K5R7aPzrL6V7ebxZSHtcJ89BQoLvIJ0msXOBIAgZpGlQrEtNQYI4NeOT+JSNtpN+T+Aw7yVY6ionwncNOLeJn6Hnd6UVqTvWMmLl3C89BfWKlvt4/cxSwV99L39ev1uJraSJjpZL/1e88owNsDVc8AHX2fKYHtKY9T0tinPy6+mEkdKZdX+uHG6C9oePrcaU40ggxK/u6imqLCV2rp67ZBVDCr',
	}  
}
