<%@ page import="analysis.AnalysisResults" %>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta name="layout" content="main"/>
	<title><g:message code="analysisResults.edit" default="Edit AnalysisResults"/></title>
</head>
<body>
<div class="nav">
	<span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home"/></a></span>
	<span class="menuButton"><g:link class="list" action="list"><g:message code="analysisResults.list" default="AnalysisResults List"/></g:link></span>
	<span class="menuButton"><g:link class="create" action="create"><g:message code="analysisResults.new" default="New AnalysisResults"/></g:link></span>
</div>
<div class="body">
	<h1><g:message code="analysisResults.edit" default="Edit AnalysisResults"/></h1>
	<g:if test="${flash.message}">
		<div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
	</g:if>
	<g:hasErrors bean="${analysisResultsInstance}">
		<div class="errors">
			<g:renderErrors bean="${analysisResultsInstance}" as="list"/>
		</div>
	</g:hasErrors>
	<g:form method="post">
		<g:hiddenField name="id" value="${analysisResultsInstance?.id}"/>
		<g:hiddenField name="version" value="${analysisResultsInstance?.version}"/>
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
			<span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'update', 'default': 'Update')}"/></span>
			<span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');"/></span>
		</div>
	</g:form>
</div>
</body>
</html>
