package account

import grails.plugins.springsecurity.Secured

class InformController {
	@Secured(['ROLE_USER'])
	def main = {

	}

	def message = {
	}

	def error = {
	}

}
