
<%@ page import="org.bahmni.referenceData.domain.Test" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'test.label', default: 'Test')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-test" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-test" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'test.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="cost" title="${message(code: 'test.cost.label', default: 'Cost')}" />
					
						<th><g:message code="test.department.label" default="Department" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'test.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'test.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${testInstanceList}" status="i" var="testInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${testInstance.id}">${fieldValue(bean: testInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: testInstance, field: "cost")}</td>
					
						<td>${fieldValue(bean: testInstance, field: "department")}</td>
					
						<td><g:formatDate date="${testInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${testInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${testInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
