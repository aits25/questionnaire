<%@ page import="questionnaire.Question" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="question.list" default="Question List"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="question.new" default="New Question"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="question.list" default="Question List"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<div class="list">
		<table>
			<thead>
			<tr>

				<g:sortableColumn property="id" title="Id" titleKey="question.id"/>

				<g:sortableColumn property="name" title="Name" titleKey="question.name"/>

				<g:sortableColumn property="status" title="Status" titleKey="question.status"/>

			</tr>
			</thead>
			<tbody>
			<g:each in="${questionInstanceList}" status="i" var="questionInstance">
				<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

					<td><g:link action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "id")}</g:link></td>

					<td>${fieldValue(bean: questionInstance, field: "name")}</td>

					<td><g:formatBoolean boolean="${questionInstance.status}"/></td>

				</tr>
			</g:each>
			</tbody>
		</table>
	</div>
	<div class="paginateButtons">
		<g:paginate total="${questionInstanceTotal}"/>
	</div>
</div>
</body>
</html>
