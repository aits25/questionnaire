<%@ page import="questionnaire.QuestionType" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="questionType.list" default="QuestionType List"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="questionType.new" default="New QuestionType"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="questionType.list" default="QuestionType List"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<div class="list">
		<table>
			<thead>
			<tr>

				<g:sortableColumn property="id" title="Id" titleKey="questionType.id"/>

				<g:sortableColumn property="type" title="Type" titleKey="questionType.type"/>

			</tr>
			</thead>
			<tbody>
			<g:each in="${questionTypeInstanceList}" status="i" var="questionTypeInstance">
				<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

					<td><g:link action="show" id="${questionTypeInstance.id}">${fieldValue(bean: questionTypeInstance, field: "id")}</g:link></td>

					<td>${fieldValue(bean: questionTypeInstance, field: "type")}</td>

				</tr>
			</g:each>
			</tbody>
		</table>
	</div>
	<div class="paginateButtons">
		<g:paginate total="${questionTypeInstanceTotal}"/>
	</div>
</div>
</body>
</html>
