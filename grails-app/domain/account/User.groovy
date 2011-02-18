package account

class User {

	String username
	String password
	boolean enabled
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	String name
	String email



	static constraints = {
		username blank: false, unique: true, size: 3..30
		password blank: false
		name blank: false
		email blank: false, unique: true, email: true

	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		UserRole.findAllByUser(this).collect { it.role } as Set
	}
}
