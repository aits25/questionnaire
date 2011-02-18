<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ขอรหัสผ่านใหม่</title>
	<meta name="layout" content="main"/>
</head>
<body>

<div class="grid_20 minHeight paddingtop_1 paddingbottom_2">
	<h1>ขอรหัสผ่านใหม่</h1>
	<p>ใส่ชื่อบัญชี Inwid ของคุณ หรือที่อยู่อีเมลที่คุณใช้ในบัญชีของคุณ</p>
	<form action="forgotPasswd" method="post">
		<table class="form">
			<g:hasErrors bean="${emailConfirmInstance}">
				<tr>
					<td class="name"></td>
					<td class="error ${hasErrors(bean: emailConfirmInstance, field: 'email', 'errors')}">
						<div class="error">
							<g:renderErrors bean="${emailConfirmInstance}" as="list"/>
						</div>
					</td>
				</tr>
			</g:hasErrors>
			<tr>
				<td class="name">
					<label for="username">ชื่อบัญชี หรือ ที่อยู่อีเมล์</label>
				</td>
				<td class="value">
					<input type="text" id="username" name="username" value=""/>
				</td>
			</tr>
			<recaptcha:ifEnabled>
				<tr>
					<td class="name">
						<label for="recaptcha_response_field">รหัสตรวจสอบ</label>
					</td>
					<td class="value">
						<div>พิมพ์ตัวอักษรที่คุณเห็นในภาพด้านล่าง หรือ <a href="javascript:Recaptcha.reload()">เปลี่ยนภาพ</a></div>
						<div id="recaptcha_image" style="width:300px;height:57px;"></div>
						<input id="recaptcha_response_field" name="recaptcha_response_field" type="text" autocomplete="off"/>
						<recaptcha:recaptcha theme="custom" lang="th" custom_theme_widget="recaptcha_widget"/>
					</td>
				</tr>
			</recaptcha:ifEnabled>
			<tr>
				<td class="name"></td>
				<td class="value">
					<input id="submit" name="submit" type="submit" value="ขอรหัสผ่านใหม่"/>
				</td>
			</tr>
		</table>
	</form>
</div>

</body>
</html>