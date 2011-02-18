<div id="headWarp">
	<div id="headArea" class="container_20">
		<div class="grid_15">
			<span id="logoText"><b>WU<font color="red">Q</font></b>uestionnaire</span>
		</div>
		<div class="grid_5">
			<ul id="userBar">
				<sec:ifNotLoggedIn>
					<li><g:link controller="login">ลงชื่อเข้าสู่ระบบ</g:link></li>
					<li><g:link controller="register">ลงทะเบียนสมาชิกใหม่</g:link></li>
				</sec:ifNotLoggedIn>
				<sec:ifLoggedIn>
					<li>
						<b>@<sec:username/></b>
						<sec:ifSwitched>
							<a href='${request.contextPath}/j_spring_security_exit_user' style="color: #ff8c00">(กลับสู่ <sec:switchedUserOriginalUsername/>)</a>
						</sec:ifSwitched>
					</li>
				</sec:ifLoggedIn>
				<sec:ifLoggedIn>
					<li><g:link controller="account">บัญชีผู้ใช้</g:link></li>
					<sec:ifAnyGranted roles="ROLE_ADMIN">
						<li><g:link controller="admin" style="color: red">จัดการระบบ</g:link></li>
					</sec:ifAnyGranted>
					<li><g:link controller="logout">ออกจากระบบ</g:link></li>
				</sec:ifLoggedIn>
			</ul>
		</div>
		<hr class="clear"/>
	</div>
</div>