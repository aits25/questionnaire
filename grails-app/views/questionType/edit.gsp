<%@ page import="questionnaire.QuestionType" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="questionType.edit" default="Edit QuestionType"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="list" action="list"><g:message code="questionType.list" default="QuestionType List"/></g:link></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="questionType.new" default="New QuestionType"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="questionType.edit" default="Edit QuestionType"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<g:hasErrors bean="${questionTypeInstance}">
		<div class="errors">
			<g:renderErrors bean="${questionTypeInstance}" as="list"/>
		</div>
	</g:hasErrors>
	<g:form method="post">
		<g:hiddenField name="id" value="${questionTypeInstance?.id}"/>
		<g:hiddenField name="version" value="${questionTypeInstance?.version}"/>
		<div class="dialog">
			<table>
				<tbody>

				<tr class="prop">
					<td valign="top" class="name">
						<label for="type"><g:message code="questionType.type" default="Type"/>:</label>
					</td>
					<td valign="top" class="value ${hasErrors(bean: questionTypeInstance, field: 'type', 'errors')}">
						<g:textField name="type" value="${fieldValue(bean: questionTypeInstance, field: 'type')}"/>

					</td>
				</tr>

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
