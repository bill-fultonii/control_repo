node default {
 	file {'/root/README':
 		ensure => file,
 		content => 'This is a readme'
	}
}
node 'master.puppet.vm' {
	include role::master_server
}
