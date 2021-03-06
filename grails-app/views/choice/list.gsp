<%@ page import="questionnaire.Choice" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="choice.list" default="Choice List"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="choice.new" default="New Choice"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="choice.list" default="Choice List"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<div class="list">
		<table>
			<thead>
			<tr>

				<g:sortableColumn property="id" title="Id" titleKey="choice.id"/>

				<g:sortableColumn property="name" title="Name" titleKey="choice.name"/>

				<g:sortableColumn property="value" title="Value" titleKey="choice.value"/>

			</tr>
			</thead>
			<tbody>
			<g:each in="${choiceInstanceList}" status="i" var="choiceInstance">
				<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

					<td><g:link action="show" id="${choiceInstance.id}">${fieldValue(bean: choiceInstance, field: "id")}</g:link></td>

					<td>${fieldValue(bean: choiceInstance, field: "name")}</td>

					<td>${fieldValue(bean: choiceInstance, field: "value")}</td>

				</tr>
			</g:each>
			</tbody>
		</table>
	</div>
	<div class="paginateButtons">
		<g:paginate total="${choiceInstanceTotal}"/>
	</div>
</div>
</body>
</html>
