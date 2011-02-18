package account

import grails.plugins.springsecurity.Secured
import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

@Secured(['IS_AUTHENTICATED_ANONYMOUSLY'])
class RegisterController {

	def mailService
	def springSecurityService
	def messageService

	def index = {
		redirect action: create, params: params
	}

	def create = {
		// test comment

		def userRole = Role.findByAuthority('ROLE_USER')
		if (!userRole) {
			flash.error = 'User Role not found.'
			redirect controller: 'inform', action: 'message'
			return
		}


		def userInstance = new User()
		userInstance.username = params.username
		userInstance.password = params.password
		userInstance.enabled = true
		userInstance.name = params.name
		userInstance.email = params.email

		if (params.submit) {
			print params.repassword
			print params.password
			if (params.password != params.repassword) {
				userInstance.errors.reject('error.custom', ["{รหัสผ่านไม่ตรงกัน}"] as Object[], '')
			}
			else {
				if (userInstance.validate()) {
					userInstance.password = springSecurityService.encodePassword(userInstance.password)
					if (userInstance.save(flush: true)) {
						UserRole.create userInstance, userRole, true

						// login
						springSecurityService.reauthenticate userInstance.username

						try {
							// message
							messageService.send(userInstance, "ยินดีต้อนรับเ")

							// mail
							mailService.sendMail {
								to "${userInstance.email}"
								subject "wuq account ${userInstance.username} created"
								body g.render(template: "mailAccountCreated", model: [username: params.username, password: params.password])
							}
						} catch (e) {
						}

						flash.success = "บัญชีผู้ใช้ <b>${userInstance.username}</b> ได้ถูกสร้างขึ้นแล้ว."
						redirect uri: SpringSecurityUtils.securityConfig.successHandler.defaultTargetUrl
						return
					}
				}
			}
		}

		[userInstance: userInstance]
	}

	/*
	def forgotPasswd = {
		if (params.submit) {
			def userInstance = User.findByUsernameOrEmail(params.username, params.username);
			if (!userInstance) {
				emailConfirmInstance.errors.reject('error.custom', ["ไม่พบบัญชีผู้ใช้ ${params.username}"] as Object[], '')
			}
			else if (!recaptchaService.verifyAnswer(session, request.getRemoteAddr(), params)) {
				emailConfirmInstance.errors.reject('captcha.invalid')
			}
			else {
				emailConfirmInstance.email = userInstance.email
				emailConfirmInstance.ref1 = "resetPasswd"
				emailConfirmInstance.ref2 = userInstance.username
				if (emailConfirmInstance.save()) {
					try {
						// message
						messageService.send(userInstance, "มีการแจ้งลืมรหัสผ่าน")

						// mail
						mailService.sendMail {
							to "${emailConfirmInstance.email}"
							subject "Reset your password (${userInstance.username})"
							body g.render(template: "mailForgotPasswd", model: [username: userInstance.username, token: emailConfirmInstance.token])
						}
					} catch (e) {
					}
					flash.message = "ตรวจสอบอีเมล์ของคุณ (${userInstance.email}) เพื่อดำเนินการขั้นตอนต่อไป"
					redirect controller: 'inform', action: 'message'
					return
				}
			}
		}

		[emailConfirmInstance: emailConfirmInstance]
	}

	def resetPasswd = {
		def emailConfirm = EmailConfirm.findByRef1AndToken('resetPasswd', params.token ?: '')
		if (!emailConfirm) {
			flash.error = "รหัสอ้างอิง หมดอายุแล้ว"
			redirect controller: 'inform', action: 'message'
			return
		}

		def userInstance = User.findByUsername(emailConfirm.ref2);
		emailConfirm.delete();
		if (!userInstance) {
			flash.error = "เกิดข้อผิดพลาด ไม่พบบัญชีผู้ใช้"
			redirect controller: 'inform', action: 'message'
			return
		}

		// login
		springSecurityService.reauthenticate userInstance.username
		redirect controller: 'profile', action: 'passwd'
	}
	*/

}
