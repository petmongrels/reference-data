
<%@ page import="org.bahmni.referenceData.domain.UnitOfMeasure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitOfMeasure.label', default: 'UnitOfMeasure')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-unitOfMeasure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-unitOfMeasure" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'unitOfMeasure.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'unitOfMeasure.isActive.label', default: 'Is Active')}" />
					
						<th><g:message code="unitOfMeasure.category.label" default="Category" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'unitOfMeasure.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'unitOfMeasure.lastUpdated.label', default: 'Last Updated')}" />
					
						<g:sortableColumn property="ratio" title="${message(code: 'unitOfMeasure.ratio.label', default: 'Ratio')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${unitOfMeasureInstanceList}" status="i" var="unitOfMeasureInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${unitOfMeasureInstance.id}">${fieldValue(bean: unitOfMeasureInstance, field: "name")}</g:link></td>
					
						<td><g:formatBoolean boolean="${unitOfMeasureInstance.isActive}" /></td>
					
						<td>${fieldValue(bean: unitOfMeasureInstance, field: "category")}</td>
					
						<td><g:formatDate date="${unitOfMeasureInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${unitOfMeasureInstance.lastUpdated}" /></td>
					
						<td>${fieldValue(bean: unitOfMeasureInstance, field: "ratio")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${unitOfMeasureInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
