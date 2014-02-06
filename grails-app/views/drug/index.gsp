
<%@ page import="org.bahmni.referenceData.domain.Drug" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drug.label', default: 'Drug')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-drug" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-drug" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'drug.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'drug.isActive.label', default: 'Is Active')}" />
					
						<g:sortableColumn property="genericName" title="${message(code: 'drug.genericName.label', default: 'Generic Name')}" />
					
						<g:sortableColumn property="salePrice" title="${message(code: 'drug.salePrice.label', default: 'Sale Price')}" />
					
						<th><g:message code="drug.category.label" default="Category" /></th>
					
						<th><g:message code="drug.form.label" default="Form" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${drugInstanceList}" status="i" var="drugInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${drugInstance.id}">${fieldValue(bean: drugInstance, field: "name")}</g:link></td>
					
						<td><g:formatBoolean boolean="${drugInstance.isActive}" /></td>
					
						<td>${fieldValue(bean: drugInstance, field: "genericName")}</td>
					
						<td>${fieldValue(bean: drugInstance, field: "salePrice")}</td>
					
						<td>${fieldValue(bean: drugInstance, field: "category")}</td>
					
						<td>${fieldValue(bean: drugInstance, field: "form")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${drugInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
