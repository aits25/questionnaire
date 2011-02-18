<%@ page import="analysis.AnalysisResults" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="analysisResults.create" default="Create AnalysisResults"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="list" action="list"><g:message code="analysisResults.list" default="AnalysisResults List"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="analysisResults.create" default="Create AnalysisResults"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<g:hasErrors bean="${analysisResultsInstance}">
		<div class="errors">
			<g:renderErrors bean="${analysisResultsInstance}" as="list"/>
		</div>
	</g:hasErrors>
	<g:form action="save" method="post">
		<div class="dialog">
			<table>
				<tbody>

				<tr class="prop">
					<td valign="top" class="name">
						<label for="data"><g:message code="analysisResults.data" default="Data"/>:</label>
					</td>
					<td valign="top" class="value ${hasErrors(bean: analysisResultsInstance, field: 'data', 'errors')}">
						<g:textField name="data" value="${fieldValue(bean: analysisResultsInstance, field: 'data')}"/>

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
