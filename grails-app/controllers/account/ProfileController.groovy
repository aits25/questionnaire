package account

import grails.plugins.springsecurity.Secured

@Secured(['ROLE_USER'])
class ProfileController {

	static defaultAction = 'home'

	def mailService
	def recaptchaService
	def springSecurityService
	def messageService

	def home = {
		def user = User.get(springSecurityService.principal.id)
		def messageList = messageService.getUserMessage(user, 20)

		[user: user, messageList: messageList]
	}

	def passwd = {
		def userInstance = User.get(springSecurityService.principal.id)
		if (params.submit) {
			if (params.password == params.repassword) {
				userInstance.password = params.password
				userInstance.enabled = true
				if (userInstance.validate()) {
					userInstance.password = springSecurityService.encodePassword(userInstance.password)
					if (userInstance.save()) {
						// message
						messageService.send(userInstance, "ทำการเปลี่ยนรหัสผ่าน")

						flash.message = "การเปลี่ยนรหัสผ่านเสร็จสิ้น"
						redirect action: 'home'
						return
					}
				}
			}
			else {
				userInstance.errors.reject('user.repassword.notmatch')
			}
		}
		[userInstance: userInstance]
	}

	/*
	def changeEmail = {
		def userInstance = User.get(springSecurityService.principal.id)
		def emailConfirmInstance = new EmailConfirm()

		if (params.submit) {
			emailConfirmInstance.email = params.email
			emailConfirmInstance.ref1 = "changeEmail"
			emailConfirmInstance.ref2 = userInstance.username
			if (User.findByEmail(params.email ?: '')) {
				emailConfirmInstance.errors.reject('user.email.unique')
			}
			else if (emailConfirmInstance.save()) {
				try {
					// message
					messageService.send(userInstance, "ร้องขอการเปลียนที่อยู่อีเมล์ของบัญชีผู้ใช้เป็น ${params.email}")

					// mail
					mailService.sendMail {
						to "${emailConfirmInstance.email}"
						subject "Confirm change email (${userInstance.username})"
						body g.render(template: "mailChangeEmail", model: [username: userInstance.username, token: emailConfirmInstance.token, email: emailConfirmInstance.email])
					}
				}
				catch (e) {
					println e.message;
				}

				flash.success = "การเปลี่ยนอีเมล์จะเสร็จสมบูรณ์ เมื่อได้ทำการยืนยันที่อีเมล์ <b>${emailConfirmInstance.email}</b>"
				flash.message = "ตรวจสอบอีเมล์ของคุณ (${emailConfirmInstance.email}) เพื่อดำเนินการขั้นตอนต่อไป"
				redirect controller: 'inform', action: 'message'
				return
			}
		}
		[userInstance: userInstance, emailConfirmInstance: emailConfirmInstance]
	}

	def changeEmailConfirm = {
		def emailConfirmInstance = EmailConfirm.findByRef1AndToken('changeEmail', params.token ?: '')
		if (!emailConfirmInstance) {
			flash.error = "รหัสอ้างอิง หมดอายุแล้ว"
			redirect controller: 'inform', action: 'message'
			return
		}

		def userInstance = User.findByUsername(emailConfirmInstance.ref2)
		if (!userInstance) {
			flash.error = "ไม่พบบัญชีผู้ใช้ ${emailConfirmInstance.ref2}"
			redirect controller: 'inform', action: 'message'
			return
		}

		userInstance.email = emailConfirmInstance.email
		userInstance.save()

		// message
		messageService.send(userInstance, "ยืนยันการเปลียนที่อยู่อีเมล์ของบัญชีผู้ใช้เป็น ${userInstance.username}")

		flash.message = "การเปลียนที่อยู่อีเมล์ของบัญชีผู้ใช้ ${userInstance.username} เสร็จสิ้น"
		redirect action: 'home'
	}
	*/

}
