<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://www.facebook.com/2008/fbml">
<head>
	<title><g:layoutTitle default="Inwid"/> - One Identity For All</title>
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

		<div id="space" class="grid_4 paddingtop_1 clearfix">
			<g:include controller="space" action="panel"/>
			<hr class="clear"/>
		</div>

		<div id="pageArea" class="grid_11 minHeight paddingtop_1 paddingbottom_2 clearfix">
			<g:include view="inform/ajaxMessage.gsp"/>
			<g:layoutBody/>
			<hr class="clear"/>
		</div>

		<div class="grid_5 paddingtop_1 paddingbottom_2 clearfix">
			<script src="http://widgets.twimg.com/j/2/widget.js"></script>
			<script>
				new TWTR.Widget({
					version: 2,
					type: 'profile',
					rpp: 10,
					interval: 6000,
					width: 'auto',
					height: 400,
					theme: {
						shell: {
							background: '#EBF1F6',
							color: '#000000'
						},
						tweets: {
							background: '#FFF',
							color: '#000000',
							links: '#00F'
						}
					},
					features: {
						scrollbar: false,
						loop: true,
						live: true,
						hashtags: true,
						timestamp: true,
						avatars: false,
						behavior: 'all'
					}
				}).render().setUser('inwid_com').start();
			</script>
			<%--
			<div class="boxSpace clearfix">
				<h4 class="sectionBox">เซอร์เวอร์แนะนำ</h4>
				<div class="sectionBodyBox">
				</div>
			</div>
			<div class="boxSpace clearfix">
				<h4 class="sectionBox">ผู้สนับสนุน</h4>
				<div class="sectionBodyBox">
					<div style="border: dotted 1px #CCC; height: 40px; margin-bottom: 10px;"></div>
					<div style="border: dotted 1px #CCC; height: 40px; margin-bottom: 10px;"></div>
					<div style="border: dotted 1px #CCC; height: 40px;"></div>
				</div>
			</div>
			<div class="boxSpace clearfix">
				<script type="text/javascript"><!--
				google_ad_client = "pub-9244046180693840";
				/* inwid_180x150 */
				google_ad_slot = "6861548909";
				google_ad_width = 180;
				google_ad_height = 150;
				//-->
				</script>
				<script type="text/javascript"
						src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
				</script>
			</div>
			--%>
		</div>

		<hr class="clear"/>
	</div>
</div>
<g:render template="/layouts/footer"/>
</body>
</html>