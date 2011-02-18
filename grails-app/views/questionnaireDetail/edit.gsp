<%@ page import="questionnaire.QuestionnaireDetail" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="questionnaireDetail.edit" default="Edit QuestionnaireDetail"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="list" action="list"><g:message code="questionnaireDetail.list" default="QuestionnaireDetail List"/></g:link></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="questionnaireDetail.new" default="New QuestionnaireDetail"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="questionnaireDetail.edit" default="Edit QuestionnaireDetail"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<g:hasErrors bean="${questionnaireDetailInstance}">
		<div class="errors">
			<g:renderErrors bean="${questionnaireDetailInstance}" as="list"/>
		</div>
	</g:hasErrors>
	<g:form method="post">
		<g:hiddenField name="id" value="${questionnaireDetailInstance?.id}"/>
		<g:hiddenField name="version" value="${questionnaireDetailInstance?.version}"/>
		<div class="dialog">
			<table>
				<tbody>

				</tbody>
			</table>
		</div>
		<div class="buttons">
			<span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'update', 'default': 'Update')}"/></span>
			<span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');"/></span>
		</div>
	</g:form>
</div>
</body>
</html>
