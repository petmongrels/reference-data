
<%@ page import="org.bahmni.referenceData.domain.Sample" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'sample.label', default: 'Sample')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-sample" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-sample" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'sample.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="shortName" title="${message(code: 'sample.shortName.label', default: 'Short Name')}" />
					
						<g:sortableColumn property="sortOrder" title="${message(code: 'sample.sortOrder.label', default: 'Sort Order')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'sample.isActive.label', default: 'Is Active')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'sample.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'sample.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${sampleInstanceList}" status="i" var="sampleInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${sampleInstance.id}">${fieldValue(bean: sampleInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: sampleInstance, field: "shortName")}</td>
					
						<td>${fieldValue(bean: sampleInstance, field: "sortOrder")}</td>
					
						<td><g:formatBoolean boolean="${sampleInstance.isActive}" /></td>
					
						<td><g:formatDate date="${sampleInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${sampleInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate action="index" total="${sampleInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
