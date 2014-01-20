
<%@ page import="org.bahmni.referenceData.domain.PanelTest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'panelTest.label', default: 'PanelTest')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-panelTest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-panelTest" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<th><g:message code="panelTest.panel.label" default="Panel" /></th>
					
						<th><g:message code="panelTest.test.label" default="Test" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'panelTest.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'panelTest.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${panelTestInstanceList}" status="i" var="panelTestInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${panelTestInstance.id}">${fieldValue(bean: panelTestInstance, field: "panel")}</g:link></td>
					
						<td>${fieldValue(bean: panelTestInstance, field: "test")}</td>
					
						<td><g:formatDate date="${panelTestInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${panelTestInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${panelTestInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
