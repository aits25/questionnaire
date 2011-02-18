function facebox_reload() {
	//document.write('กำลังดำเนินการ');
	contentWrapper = $$('#facebox .content').first();
	contentWrapper.insert({bottom: '<center><img src="/images/spinner.gif" alt="Loading..."/> กำลังดำเนินการ...</center>'});
	window.location.reload();
}
