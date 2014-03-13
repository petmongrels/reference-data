
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
					
						<g:sortableColumn property="shortName" title="${message(code: 'test.shortName.label', default: 'Short Name')}" />
					
						<g:sortableColumn property="salePrice" title="${message(code: 'test.salePrice.label', default: 'Sale Price')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'test.isActive.label', default: 'Is Active')}" />
					
						<th><g:message code="test.department.label" default="Department" /></th>
					
						<th><g:message code="test.sample.label" default="Sample" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${testInstanceList}" status="i" var="testInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${testInstance.id}">${fieldValue(bean: testInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: testInstance, field: "shortName")}</td>
					
						<td>${fieldValue(bean: testInstance, field: "salePrice")}</td>
					
						<td><g:formatBoolean boolean="${testInstance.isActive}" /></td>
					
						<td>${fieldValue(bean: testInstance, field: "department")}</td>
					
						<td>${fieldValue(bean: testInstance, field: "sample")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate action="index" total="${testInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
