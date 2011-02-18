<%@ page import="inwid.credit.Statement; inwid.credit.Credit; inwid.gamestation.Digg; inwid.gamestation.Gameserver; inwid.account.User; inwid.credit.Refill" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
	<title>จัดการระบบ - <g:layoutTitle default="Inwid"/></title>
	<g:render template="/layouts/head"/>
	<g:layoutHead/>
</head>
<body>
<div id="spinner" class="spinner" style="display:none;">
	<img src="${staticResource(dir: 'images', file: 'spinner.gif')}" alt="${message(code: 'spinner.alt', default: 'Loading...')}"/>
</div>
<g:render template="/layouts/header"/>
<div id="bodyWarp">
	<div class="container_20">

		<div id="space" class="grid_4 paddingtop_1 paddingbottom_2 minHeight clearfix">

			<div class="boxSpace clearfix">
				<g:link action="refillList" class="sectionSpace">รายการแจ้งเติมเงิน <span class="floatRight frame_info">${Refill.count()}</span></g:link>
				<g:link action="statementHistorical" class="sectionSpace">รายการเดินบัญชี</g:link>
				<g:link action="statementHistorical" params="[type: 'refill']" class="sectionSpace">ประวัติการเติมเงิน</g:link>
			</div>

			<div class="boxSpace clearfix">
				<h4 class="sectionBox">สถิติระบบ</h4>
				<div class="sectionBodyBox">
					<table class="list">
						<tr>
							<td>สมาชิก</td>
							<td class="alignRight"><span class="frame_other">${User.countByEnabled(true)}</span></td>
						</tr>
						<tr>
							<td>เกมเซิฟเวอร์</td>
							<td class="alignRight"><span class="frame_other">${Gameserver.count()}</span></td>
						</tr>
						<tr>
							<td>งานขุด</td>
							<td class="alignRight"><span class="frame_other">${Digg.count()}</span></td>
						</tr>
						<tr>
							<td>ประเมินรายได้</td>
							<td class="alignRight"><span class="frame_other">${Digg.findAllByExpireGreaterThan(new Date()).price.sum() ?: 0.00}</span></td>
						</tr>
						<tr>
							<td>เครดิตคงเหลือ</td>
							<td class="alignRight"><span class="frame_other">${Credit.list().balance.sum() ?: 0.00}</span></td>
						</tr>
					</table>
				</div>
			</div>

			<div class="boxSpace clearfix">
				<h4 class="sectionBox">ปลอมตัว</h4>
				<div class="sectionBodyBox">
					<form action='${request.contextPath}/j_spring_security_switch_user' method='POST'>
						<!--<form action='${request.contextPath}/admin/switchUser' method='POST'>-->
						<table class="form">
							<tr>
								<td class="name">สมาชิก</td>
								<td class="value"><input type="text" name='j_username' value="" style="width: 80px;"/></td>
							</tr>
							<tr>
								<td class="name"></td>
								<td class="value"><input name="submit" type="submit" value="ปลอมตัว"/></td>
							</tr>
						</table>
					</form>
				</div>
			</div>

			<div class="boxSpace clearfix">
				<h4 class="sectionBox">เติมเครดิต</h4>
				<div class="sectionBodyBox">
					<g:form action="submitRefill">
						<table class="form">
							<tr>
								<td class="name">สมาชิก</td>
								<td class="value"><input name="username" type="text" value="" style="width: 80px;"/></td>
							</tr>
							<tr>
								<td class="name">จำนวน</td>
								<td class="value"><input name="amount" type="text" value="" style="width: 80px;"/></td>
							</tr>
							<tr>
								<td class="name"></td>
								<td class="value"><input name="submit" type="submit" value="เติมเครดิต"/></td>
							</tr>
						</table>
					</g:form>
				</div>
			</div>

			<div class="boxSpace clearfix">
				<h4 class="sectionBox">เพิ่มโคโล</h4>
				<div class="sectionBodyBox">
					<g:form action="addColo">
						<table class="form">
							<tr>
								<td class="name">สมาชิก</td>
								<td class="value"><input name="username" type="text" value="" style="width: 80px;"/></td>
							</tr>
							<tr>
								<td class="name">
									<label for="name">ชื่อโคโล</label>
								</td>
								<td class="value">
									<input id="name" name="name" value="" type="text" style="width: 80px;">
								</td>
							</tr>
							<tr>
								<td class="name">
									<label for="code">โค้สเนม</label>
								</td>
								<td class="value">
									<input id="code" name="code" value="" type="text" style="width: 80px;">
								</td>
							</tr>
							<tr>
								<td class="name"></td>
								<td class="value"><input name="submit" type="submit" value="เพิ่มโคโล"/></td>
							</tr>
						</table>
					</g:form>
				</div>
			</div>

			<hr class="clear"/>
		</div>

		<div id="pageArea" class="grid_16 minHeight paddingtop_1 paddingbottom_2 clearfix">
			<g:include view="inform/ajaxMessage.gsp"/>
			<g:layoutBody/>
			<hr class="clear"/>
		</div>

		<hr class="clear"/>
	</div>
</div>
<g:render template="/layouts/footer"/>
</body>
</html>