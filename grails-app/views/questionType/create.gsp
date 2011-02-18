<%@ page import="questionnaire.QuestionType" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="questionType.create" default="Create QuestionType"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="list" action="list"><g:message code="questionType.list" default="QuestionType List"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="questionType.create" default="Create QuestionType"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<g:hasErrors bean="${questionTypeInstance}">
		<div class="errors">
			<g:renderErrors bean="${questionTypeInstance}" as="list"/>
		</div>
	</g:hasErrors>
	<g:form action="save" method="post">
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
			<span class="button"><g:submitButton name="create" class="save" value="${message(code: 'create', 'default': 'Create')}"/></span>
		</div>
	</g:form>
</div>
</body>
</html>
