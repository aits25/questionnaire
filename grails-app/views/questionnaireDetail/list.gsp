<%@ page import="questionnaire.QuestionnaireDetail" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="questionnaireDetail.list" default="QuestionnaireDetail List"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="questionnaireDetail.new" default="New QuestionnaireDetail"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="questionnaireDetail.list" default="QuestionnaireDetail List"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<div class="list">
		<table>
			<thead>
			<tr>

				<g:sortableColumn property="id" title="Id" titleKey="questionnaireDetail.id"/>

			</tr>
			</thead>
			<tbody>
			<g:each in="${questionnaireDetailInstanceList}" status="i" var="questionnaireDetailInstance">
				<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

					<td><g:link action="show" id="${questionnaireDetailInstance.id}">${fieldValue(bean: questionnaireDetailInstance, field: "id")}</g:link></td>

				</tr>
			</g:each>
			</tbody>
		</table>
	</div>
	<div class="paginateButtons">
		<g:paginate total="${questionnaireDetailInstanceTotal}"/>
	</div>
</div>
</body>
</html>
