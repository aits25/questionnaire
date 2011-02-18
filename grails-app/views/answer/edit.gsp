<%@ page import="questionnaire.Answer" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="answer.edit" default="Edit Answer"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="list" action="list"><g:message code="answer.list" default="Answer List"/></g:link></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="answer.new" default="New Answer"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="answer.edit" default="Edit Answer"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<g:hasErrors bean="${answerInstance}">
		<div class="errors">
			<g:renderErrors bean="${answerInstance}" as="list"/>
		</div>
	</g:hasErrors>
	<g:form method="post">
		<g:hiddenField name="id" value="${answerInstance?.id}"/>
		<g:hiddenField name="version" value="${answerInstance?.version}"/>
		<div class="dialog">
			<table>
				<tbody>

				<tr class="prop">
					<td valign="top" class="name">
						<label for="answer"><g:message code="answer.answer" default="Answer"/>:</label>
					</td>
					<td valign="top" class="value ${hasErrors(bean: answerInstance, field: 'answer', 'errors')}">
						<g:textField name="answer" value="${fieldValue(bean: answerInstance, field: 'answer')}"/>

					</td>
				</tr>

				<tr class="prop">
					<td valign="top" class="name">
						<label for="date"><g:message code="answer.date" default="Date"/>:</label>
					</td>
					<td valign="top" class="value ${hasErrors(bean: answerInstance, field: 'date', 'errors')}">
						<g:datePicker name="date" value="${answerInstance?.date}"/>

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
