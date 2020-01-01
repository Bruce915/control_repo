class profile::ssh_server {
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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC+dmpa+lMD8AUhYp1l8QxcNWhj9xYfW2EMz6DZLD7tMzHnJ+YJkhqa18hyHXaC16nLW/UZPU3Q4Av8D5cgNyAT1I9VNcIiyt2C3GgReq4ln36G0Jg2q5+tHS3r6n6ZBgisgB/akjJPTyJPFab6MIxZP0skqGNJnVAZb0sSg+M2XR8UGOt6MtYxEDjioZwxeckHFmzKQsScH6s1hf4W8Uckgv5fMQZUs16yPSlv5fsogWxCTxlx5ekgsCPONAhLntIYyxHI9djGLYbX2UP7/SOLs4XLGTxMWqyrlu4HSWMCDZVeurWMLQOLgXpyVAeeWVhHb77f1Xr155eq6YGgzWtH',
	}  
}
