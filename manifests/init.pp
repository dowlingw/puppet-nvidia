class nvidia (
	$version = 352
) {

	case $::kernel {
		'Linux': {
			class { "${title}::linux":
				driver_version => $version
			}
		}
		default: {
			fail("${title}: Kernel '${::kernel}' is not currently supported")
		}
	}
}
