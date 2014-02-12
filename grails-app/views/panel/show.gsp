
<%@ page import="org.bahmni.referenceData.domain.Panel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'panel.label', default: 'Panel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-panel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-panel" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list panel">
			
				<g:if test="${panelInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="panel.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${panelInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelInstance?.shortName}">
				<li class="fieldcontain">
					<span id="shortName-label" class="property-label"><g:message code="panel.shortName.label" default="Short Name" /></span>
					
						<span class="property-value" aria-labelledby="shortName-label"><g:fieldValue bean="${panelInstance}" field="shortName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelInstance?.sortOrder}">
				<li class="fieldcontain">
					<span id="sortOrder-label" class="property-label"><g:message code="panel.sortOrder.label" default="Sort Order" /></span>
					
						<span class="property-value" aria-labelledby="sortOrder-label"><g:fieldValue bean="${panelInstance}" field="sortOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="panel.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${panelInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="panel.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${panelInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelInstance?.sample}">
				<li class="fieldcontain">
					<span id="sample-label" class="property-label"><g:message code="panel.sample.label" default="Sample" /></span>
					
						<span class="property-value" aria-labelledby="sample-label"><g:link controller="sample" action="show" id="${panelInstance?.sample?.id}">${panelInstance?.sample?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="panel.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${panelInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="panel.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${panelInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelInstance?.salePrice}">
				<li class="fieldcontain">
					<span id="salePrice-label" class="property-label"><g:message code="panel.salePrice.label" default="Sale Price" /></span>
					
						<span class="property-value" aria-labelledby="salePrice-label"><g:fieldValue bean="${panelInstance}" field="salePrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelInstance?.tests}">
				<li class="fieldcontain">
					<span id="tests-label" class="property-label"><g:message code="panel.tests.label" default="Tests" /></span>
					
						<g:each in="${panelInstance.tests}" var="t">
						<span class="property-value" aria-labelledby="tests-label"><g:link controller="test" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:panelInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${panelInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
