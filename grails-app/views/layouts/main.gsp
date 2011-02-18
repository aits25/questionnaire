<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title><g:layoutTitle default="อัตลักษณ์ ตัวตน ฉันคือใคร ใครคือคุณ Identity"/> - Inwid.com</title>
	<g:render template="/layouts/head"/>
	<g:layoutHead/>
</head>
<body>
<div id="spinner" class="spinner" style="display:none;">
	<img src="${resource(dir: 'images', file: 'spinner.gif')}" alt="${message(code: 'spinner.alt', default: 'Loading...')}"/>
</div>
<g:render template="/layouts/header"/>
<div id="bodyWarp">
	<div class="container_20 minHeight">
		<g:layoutBody/>
		<hr class="clear"/>
	</div>
</div>
<g:render template="/layouts/footer"/>
</body>
</html>