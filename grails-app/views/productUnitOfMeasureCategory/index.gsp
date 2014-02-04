
<%@ page import="org.bahmni.referenceData.domain.ProductUnitOfMeasureCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productUnitOfMeasureCategory.label', default: 'ProductUnitOfMeasureCategory')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productUnitOfMeasureCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productUnitOfMeasureCategory" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'productUnitOfMeasureCategory.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'productUnitOfMeasureCategory.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'productUnitOfMeasureCategory.lastUpdated.label', default: 'Last Updated')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productUnitOfMeasureCategoryInstanceList}" status="i" var="productUnitOfMeasureCategoryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productUnitOfMeasureCategoryInstance.id}">${fieldValue(bean: productUnitOfMeasureCategoryInstance, field: "name")}</g:link></td>
					
						<td><g:formatDate date="${productUnitOfMeasureCategoryInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${productUnitOfMeasureCategoryInstance.lastUpdated}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${productUnitOfMeasureCategoryInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
