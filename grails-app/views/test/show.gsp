
<%@ page import="org.bahmni.referenceData.domain.Test" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'test.label', default: 'Test')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-test" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-test" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list test">
			
				<g:if test="${testInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="test.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${testInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.shortName}">
				<li class="fieldcontain">
					<span id="shortName-label" class="property-label"><g:message code="test.shortName.label" default="Short Name" /></span>
					
						<span class="property-value" aria-labelledby="shortName-label"><g:fieldValue bean="${testInstance}" field="shortName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.salePrice}">
				<li class="fieldcontain">
					<span id="salePrice-label" class="property-label"><g:message code="test.salePrice.label" default="Sale Price" /></span>
					
						<span class="property-value" aria-labelledby="salePrice-label"><g:fieldValue bean="${testInstance}" field="salePrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="test.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${testInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.uuid}">
				<li class="fieldcontain">
					<span id="uuid-label" class="property-label"><g:message code="test.uuid.label" default="Uuid" /></span>
					
						<span class="property-value" aria-labelledby="uuid-label"><g:fieldValue bean="${testInstance}" field="uuid"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.department}">
				<li class="fieldcontain">
					<span id="department-label" class="property-label"><g:message code="test.department.label" default="Department" /></span>
					
						<span class="property-value" aria-labelledby="department-label"><g:link controller="department" action="show" id="${testInstance?.department?.id}">${testInstance?.department?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.sample}">
				<li class="fieldcontain">
					<span id="sample-label" class="property-label"><g:message code="test.sample.label" default="Sample" /></span>
					
						<span class="property-value" aria-labelledby="sample-label"><g:link controller="sample" action="show" id="${testInstance?.sample?.id}">${testInstance?.sample?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.sortOrder}">
				<li class="fieldcontain">
					<span id="sortOrder-label" class="property-label"><g:message code="test.sortOrder.label" default="Sort Order" /></span>
					
						<span class="property-value" aria-labelledby="sortOrder-label"><g:fieldValue bean="${testInstance}" field="sortOrder"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="test.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${testInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="test.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${testInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="test.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${testInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${testInstance?.panels}">
				<li class="fieldcontain">
					<span id="panels-label" class="property-label"><g:message code="test.panels.label" default="Panels" /></span>
					
						<g:each in="${testInstance.panels}" var="p">
						<span class="property-value" aria-labelledby="panels-label"><g:link controller="panel" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:testInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${testInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
