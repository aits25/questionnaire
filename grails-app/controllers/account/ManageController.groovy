package account

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_STAFF'])
class ManageController {

	def index = {

	}

}
