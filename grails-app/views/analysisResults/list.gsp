<%@ page import="analysis.AnalysisResults" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="analysisResults.list" default="AnalysisResults List"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="analysisResults.new" default="New AnalysisResults"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="analysisResults.list" default="AnalysisResults List"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<div class="list">
		<table>
			<thead>
			<tr>

				<g:sortableColumn property="id" title="Id" titleKey="analysisResults.id"/>

				<g:sortableColumn property="data" title="Data" titleKey="analysisResults.data"/>

			</tr>
			</thead>
			<tbody>
			<g:each in="${analysisResultsInstanceList}" status="i" var="analysisResultsInstance">
				<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">

					<td><g:link action="show" id="${analysisResultsInstance.id}">${fieldValue(bean: analysisResultsInstance, field: "id")}</g:link></td>

					<td>${fieldValue(bean: analysisResultsInstance, field: "data")}</td>

				</tr>
			</g:each>
			</tbody>
		</table>
	</div>
	<div class="paginateButtons">
		<g:paginate total="${analysisResultsInstanceTotal}"/>
	</div>
</div>
</body>
</html>
