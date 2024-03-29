
<%@ page import="org.bahmni.referenceData.domain.ProductUnitOfMeasure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productUnitOfMeasure.label', default: 'ProductUnitOfMeasure')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-productUnitOfMeasure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-productUnitOfMeasure" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'productUnitOfMeasure.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'productUnitOfMeasure.isActive.label', default: 'Is Active')}" />
					
						<th><g:message code="productUnitOfMeasure.category.label" default="Category" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'productUnitOfMeasure.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'productUnitOfMeasure.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="ratio" title="${message(code: 'productUnitOfMeasure.ratio.label', default: 'Ratio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${productUnitOfMeasureInstanceList}" status="i" var="productUnitOfMeasureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${productUnitOfMeasureInstance.id}">${fieldValue(bean: productUnitOfMeasureInstance, field: "name")}</g:link></td>
					
						<td><g:formatBoolean boolean="${productUnitOfMeasureInstance.isActive}" /></td>
					
						<td>${fieldValue(bean: productUnitOfMeasureInstance, field: "category")}</td>
					
						<td><g:formatDate date="${productUnitOfMeasureInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${productUnitOfMeasureInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: productUnitOfMeasureInstance, field: "ratio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate action="index" total="${productUnitOfMeasureInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
