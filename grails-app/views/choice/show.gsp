<%@ page import="questionnaire.Choice" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="choice.show" default="Show Choice"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="list" action="list"><g:message code="choice.list" default="Choice List"/></g:link></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="choice.new" default="New Choice"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="choice.show" default="Show Choice"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<g:form>
		<g:hiddenField name="id" value="${choiceInstance?.id}"/>
		<div class="dialog">
			<table>
				<tbody>

				<tr class="prop">
					<td valign="top" class="name"><g:message code="choice.id" default="Id"/>:</td>

					<td valign="top" class="value">${fieldValue(bean: choiceInstance, field: "id")}</td>

				</tr>

				<tr class="prop">
					<td valign="top" class="name"><g:message code="choice.name" default="Name"/>:</td>

					<td valign="top" class="value">${fieldValue(bean: choiceInstance, field: "name")}</td>

				</tr>

				<tr class="prop">
					<td valign="top" class="name"><g:message code="choice.value" default="Value"/>:</td>

					<td valign="top" class="value">${fieldValue(bean: choiceInstance, field: "value")}</td>

				</tr>

				</tbody>
			</table>
		</div>
		<div class="buttons">
			<span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'edit', 'default': 'Edit')}"/></span>
			<span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');"/></span>
		</div>
	</g:form>
</div>
</body>
</html>
