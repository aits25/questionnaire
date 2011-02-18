<%@ page import="questionnaire.Answer" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="answer.list" default="Answer List"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="answer.new" default="New Answer"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="answer.list" default="Answer List"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<div class="list">
		<table>
			<thead>
			<tr>

				<g:sortableColumn property="id" title="Id" titleKey="answer.id"/>

				<g:sortableColumn property="answer" title="Answer" titleKey="answer.answer"/>

				<g:sortableColumn property="date" title="Date" titleKey="answer.date"/>

			</tr>
			</thead>
			<tbody>
			<g:each in="${answerInstanceList}" status="i" var="answerInstance">
				<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

					<td><g:link action="show" id="${answerInstance.id}">${fieldValue(bean: answerInstance, field: "id")}</g:link></td>

					<td>${fieldValue(bean: answerInstance, field: "answer")}</td>

					<td><g:formatDate date="${answerInstance.date}"/></td>

				</tr>
			</g:each>
			</tbody>
		</table>
	</div>
	<div class="paginateButtons">
		<g:paginate total="${answerInstanceTotal}"/>
	</div>
</div>
</body>
</html>
