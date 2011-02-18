<%@ page import="questionnaire.Question" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="question.edit" default="Edit Question"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="list" action="list"><g:message code="question.list" default="Question List"/></g:link></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="question.new" default="New Question"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="question.edit" default="Edit Question"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<g:hasErrors bean="${questionInstance}">
		<div class="errors">
			<g:renderErrors bean="${questionInstance}" as="list"/>
		</div>
	</g:hasErrors>
	<g:form method="post">
		<g:hiddenField name="id" value="${questionInstance?.id}"/>
		<g:hiddenField name="version" value="${questionInstance?.version}"/>
		<div class="dialog">
			<table>
				<tbody>

				<tr class="prop">
					<td valign="top" class="name">
						<label for="choices1"><g:message code="question.choices1" default="Choices1"/>:</label>
					</td>
					<td valign="top" class="value ${hasErrors(bean: questionInstance, field: 'choices1', 'errors')}">
						<g:select name="choices1"
								from="${questionnaire.Choice.list()}"
								size="5" multiple="yes" optionKey="id"
								value="${questionInstance?.choices1}"/>

					</td>
				</tr>

				<tr class="prop">
					<td valign="top" class="name">
						<label for="name"><g:message code="question.name" default="Name"/>:</label>
					</td>
					<td valign="top" class="value ${hasErrors(bean: questionInstance, field: 'name', 'errors')}">
						<g:textField name="name" value="${fieldValue(bean: questionInstance, field: 'name')}"/>

					</td>
				</tr>

				<tr class="prop">
					<td valign="top" class="name">
						<label for="questiontypes"><g:message code="question.questiontypes" default="Questiontypes"/>:</label>
					</td>
					<td valign="top" class="value ${hasErrors(bean: questionInstance, field: 'questiontypes', 'errors')}">
						<g:select name="questiontypes"
								from="${questionnaire.QuestionType.list()}"
								size="5" multiple="yes" optionKey="id"
								value="${questionInstance?.questiontypes}"/>

					</td>
				</tr>

				<tr class="prop">
					<td valign="top" class="name">
						<label for="status"><g:message code="question.status" default="Status"/>:</label>
					</td>
					<td valign="top" class="value ${hasErrors(bean: questionInstance, field: 'status', 'errors')}">
						<g:checkBox name="status" value="${questionInstance?.status}"/>

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
