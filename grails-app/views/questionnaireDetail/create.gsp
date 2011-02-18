<%@ page import="questionnaire.QuestionnaireDetail" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="questionnaireDetail.create" default="Create QuestionnaireDetail"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="list" action="list"><g:message code="questionnaireDetail.list" default="QuestionnaireDetail List"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="questionnaireDetail.create" default="Create QuestionnaireDetail"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<g:hasErrors bean="${questionnaireDetailInstance}">
		<div class="errors">
			<g:renderErrors bean="${questionnaireDetailInstance}" as="list"/>
		</div>
	</g:hasErrors>
	<g:form action="save" method="post">
		<div class="dialog">
			<table>
				<tbody>

				</tbody>
			</table>
		</div>
		<div class="buttons">
			<span class="button"><g:submitButton name="create" class="save" value="${message(code: 'create', 'default': 'Create')}"/></span>
		</div>
	</g:form>
</div>
</body>
</html>
