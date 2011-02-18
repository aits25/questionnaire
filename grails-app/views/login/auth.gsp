<html>
<head>
	<title>WUQ Account</title>
	<style type="text/css">
	h3 {
		margin-bottom: 0px;
	}

	#loginDiv {
		margin-top: 35px;
		padding: 20px 30px;
		background: #C4E7E6;
		margin-bottom: 15px;
	}

	#loginDiv p, #loginDiv h2, #loginDiv input {
		margin-bottom: 5px;
	}

	#j_username, #j_password {
		width: 160px;
	}

	</style>
	<meta name='layout' content='main'/>
</head>
<body>

<div class="prefix_2 grid_7 paddingtop_1 paddingbottom_2">
	ยินดีต้อยรับเข้าสู่
	<b>WU<font color="red">Q</font></b>uestionnaire<br/>
	เราคือ เว็บไซต์ผู้ให้บริการสร้างแบบสอบถามออนไลน์ โดยผู้ใช้สามารถสร้างแบบสอบถามได้ต้วยตัวเอง<br/>

</div>

<div class="grid_5 push_2 paddingtop_2 paddingbottom_2">

	<div id="loginDiv" class="radius_2">
		<form id="loginForm" action="${postUrl}" method="POST">
			<h2>ลงชื่อเข้าสู่ระบบ ...</h2>
			<g:if test="${flash.message}">
				<p style="color: red">${flash.message}</p>
			</g:if>
			<p>
				<label for='j_username'>ชื่อบัญชีผู้ใช้</label>
				<input type='text' name='j_username' id='j_username' value='${request.remoteUser}' class="textbox"/>

			</p>
			<p>
				<label for='j_password'>รหัสผ่าน</label>
				<input type='password' name='j_password' id='j_password' class="textbox"/>

			</p>
			<p>
				<input type='checkbox' name='_spring_security_remember_me' id='remember_me' <g:if test='${hasCookie}'>checked='checked'</g:if>/>
				<label for='remember_me'>จดจำสถานะลงชื่อเข้าใช้</label>
			</p>
			<p>
				<input type='submit' value='ลงชื่อเข้าใช้งาน'/>
			</p>
			<p>
				<g:link controller="register" action="forgotPasswd">ลืมรหัสผ่าน !</g:link>
				<br><g:link controller="register">ลงทะเบียนสมาชิกใหม่</g:link>
			</p>
		</form>
		<script type='text/javascript'>
			<!--
			(function() {
				document.forms['loginForm'].elements['j_username'].focus();
			})();
			// -->
		</script>
	</div>
</div>
</body>
</html>