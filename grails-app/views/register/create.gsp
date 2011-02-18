<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>สร้างบัญชีผู้ใช้ใหม่</title>
	<meta name="layout" content="main"/>
</head>
<body>

<div class="grid_20 minHeight paddingtop_1 paddingbottom_2">
	<h1>สร้างบัญชีผู้ใช้ใหม่</h1>
	<p>หากคุณมีบัญชี WUQuestionnaire อยู่แล้ว คุณสามารถ <g:link controller="login" action="auth">ลงชื่อเข้าสู่ระบบที่นี่</g:link></p>
	<g:form action="create" method="post">
		<input type="hidden" name="token" value="${params.token}"/>
		<table class="form">
			<g:hasErrors bean="${userInstance}">
				<tr>
					<td class="name"></td>
					<td class="error">
						<div class="error">
							<g:renderErrors bean="${userInstance}" as="list"/>
						</div>
					</td>
				</tr>
			</g:hasErrors>
			<tr>
				<td class="name">
					<label for="username">ชื่อไอดีที่ต้องการ</label>
				</td>
				<td class="value ${hasErrors(bean: userInstance, field: 'username', 'errors')}">
					<input type="text" id="username" name="username" value="${userInstance.username}"/>
					<div class="hint">ความยาว 4-24  ตัว อักษร a-z หรือ เลข 0-9 เท่านั้น</div>
				</td>
			</tr>
			<tr>
				<td class="name">
					<label for="password">กำหนดรหัสผ่าน</label>
				</td>
				<td class="value ${hasErrors(bean: userInstance, field: 'password', 'errors')}">
					<input type="password" id="password" name="password" value=""/>
					<div class="hint">ความยาวอย่างน้อย 5 ตัวอักขระ</div>
				</td>
			</tr>
			<tr>
				<td class="name">
					<label for="password">ป้อนรหัสผ่านอีกครั้ง</label>
				</td>
				<td class="value ${hasErrors(bean: userInstance, field: 'password', 'errors')}">
					<input type="password" id="repassword" name="repassword" value=""/>
				</td>
			</tr>
			<tr>
				<td class="name">
					<label for="name">ชื่อนามสกุล</label>
				</td>
				<td class="value ${hasErrors(bean: userInstance, field: 'name', 'errors')}">
					<input type="text" id="name" name="name" value="${userInstance.name}"/>
					<div class="hint">ไม่ค้องใส่คำนำหน้านาม</div>
				</td>
			</tr>
			<tr>
				<td class="name">
					<label for="email">อีเมล์</label>
				</td>
				<td class="value ${hasErrors(bean: userInstance, field: 'email', 'errors')}">
					<input type="text" id="email" name="email" value="${userInstance.email}"/>
					<div class="hint">อีเมล์ที่ต้องการใช้ในการลงทะเบียน แนะนำให้ใช้ <a href="http://www.gmail.com">Gmail</a></div>
				</td>
			</tr>
			<tr>
				<td class="name"></td>
				<td class="value">
					<input id="submit" name="submit" type="submit" value="สร้างบัญชีผู้ใช้ของฉัน"/>
				</td>
			</tr>
		</table>
	</g:form>
</div>

</body>
</html>