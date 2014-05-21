
<%@ page import="org.bahmni.referenceData.domain.TestUnitOfMeasure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'testUnitOfMeasure.label', default: 'TestUnitOfMeasure')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-testUnitOfMeasure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <li><g:link class="csv" action="uploadCsv"><g:message code="default.csv.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-testUnitOfMeasure" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'testUnitOfMeasure.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'testUnitOfMeasure.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'testUnitOfMeasure.isActive.label', default: 'Is Active')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'testUnitOfMeasure.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${testUnitOfMeasureInstanceList}" status="i" var="testUnitOfMeasureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${testUnitOfMeasureInstance.id}">${fieldValue(bean: testUnitOfMeasureInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${testUnitOfMeasureInstance.dateCreated}" /></td>
					
						<td><g:formatBoolean boolean="${testUnitOfMeasureInstance.isActive}" /></td>
					
						<td><g:formatDate date="${testUnitOfMeasureInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate action="index" total="${testUnitOfMeasureInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
