
<!DOCTYPE html>
<html>
	<head>
		<title><g:layoutTitle default="" /></title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="shortctu icon" href="${resource(dir:'images',file:'searchtool.ico')}">
		<link rel="icon" href="${resource(dir:'images',file:'searchtool.ico')}">
		<link rel="stylesheet" href="${resource(dir:'css',file:'main.css')}" />
		<link rel="stylesheet"	href="${resource(dir:'js',file:'ext/resources/css/ext-all.css')}" />
		<link rel="stylesheet" href="${resource(dir:'js',file:'ext/resources/css/xtheme-gray.css')}" />
		<link rel="stylesheet"	href="${resource(dir:'css',file:'admin.css')}" />

		<script type="text/javascript"	src="${resource(dir:'js', file:'ext/adapter/ext/ext-base.js')}"></script>
		<script type="text/javascript"	src="${resource(dir:'js', file:'ext/ext-all.js')}"></script>
	    <script type="text/javascript"	src="${resource(dir:'js', file:'usergroup.js')}"></script>
	    <script type="text/javascript" src="${resource(dir:'js', file:'utilitiesMenu.js')}"></script>
        <script type="text/javascript" src="${resource(dir:'js', file:'prototype.js')}"></script>
		<script type="text/javascript" charset="utf-8">
			Ext.BLANK_IMAGE_URL = "${resource(dir:'js', file:'ext/resources/images/default/s.gif')}";

			// set ajax to 90*1000 milliseconds
			Ext.Ajax.timeout = 180000;

			Ext.onReady(function()
		    {
			    Ext.QuickTips.init();

	            var helpURL = '${grailsApplication.config.com.recomdata.adminHelpURL}';
	            var contact = '${grailsApplication.config.com.recomdata.contactUs}';
	            var appTitle = '${grailsApplication.config.com.recomdata.appTitle}';
	            var buildVer = 'Build Version: <g:meta name="environment.BUILD_NUMBER"/> - <g:meta name="environment.BUILD_ID"/>';
				   

	            var pageInfo = {
					basePath :"${request.getContextPath()}"
				}
	        });
		</script>
		<g:layoutHead />
	</head>
	<body>
		<div id="page">
			<div id="header"><g:render template="/layouts/commonheader"	model="['app':'accesslog']" /></div>
 			<div id='navbar'><g:render template="/layouts/adminnavbar" /></div>
			<div id="content"><g:layoutBody /></div>    
		</div>
	</body>
</html>
