import account.Role
import account.User
import account.UserRole

class BootStrap {

	def springSecurityService

	def init = { servletContext ->

		def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
		def userRole = new Role(authority: 'ROLE_USER').save(flush: true)

		def adminUser = new User(
				username: 'admin',
				enabled: true,
				password: springSecurityService.encodePassword('admin'),
				name: 'Admin User',
				email: 'tanoy@tanoy.net'
		)
		adminUser.save(flush: true)
		UserRole.create adminUser, adminRole, true

		def demoUser = new User(
				username: 'demo',
				enabled: true,
				password: springSecurityService.encodePassword('demo'),
				name: 'Demo User',
				email: 'demo@tanoy.net'
		)
		demoUser.save(flush: true)
		UserRole.create demoUser, userRole, true
	}

	def destroy = {
	}

}
