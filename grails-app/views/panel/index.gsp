
<%@ page import="org.bahmni.referenceData.domain.Panel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'panel.label', default: 'Panel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-panel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-panel" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'panel.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="shortName" title="${message(code: 'panel.shortName.label', default: 'Short Name')}" />
					
						<g:sortableColumn property="sortOrder" title="${message(code: 'panel.sortOrder.label', default: 'Sort Order')}" />
					
						<g:sortableColumn property="isActive" title="${message(code: 'panel.isActive.label', default: 'Is Active')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'panel.description.label', default: 'Description')}" />
					
						<th><g:message code="panel.sample.label" default="Sample" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${panelInstanceList}" status="i" var="panelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${panelInstance.id}">${fieldValue(bean: panelInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: panelInstance, field: "shortName")}</td>
					
						<td>${fieldValue(bean: panelInstance, field: "sortOrder")}</td>
					
						<td><g:formatBoolean boolean="${panelInstance.isActive}" /></td>
					
						<td>${fieldValue(bean: panelInstance, field: "description")}</td>
					
						<td>${fieldValue(bean: panelInstance, field: "sample")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate action="index" total="${panelInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
