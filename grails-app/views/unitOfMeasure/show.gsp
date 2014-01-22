
<%@ page import="org.bahmni.referenceData.domain.UnitOfMeasure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'unitOfMeasure.label', default: 'UnitOfMeasure')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-unitOfMeasure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-unitOfMeasure" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list unitOfMeasure">
			
				<g:if test="${unitOfMeasureInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="unitOfMeasure.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${unitOfMeasureInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitOfMeasureInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="unitOfMeasure.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${unitOfMeasureInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitOfMeasureInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="unitOfMeasure.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="unitOfMeasureCategory" action="show" id="${unitOfMeasureInstance?.category?.id}">${unitOfMeasureInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitOfMeasureInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="unitOfMeasure.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${unitOfMeasureInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitOfMeasureInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="unitOfMeasure.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${unitOfMeasureInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${unitOfMeasureInstance?.ratio}">
				<li class="fieldcontain">
					<span id="ratio-label" class="property-label"><g:message code="unitOfMeasure.ratio.label" default="Ratio" /></span>
					
						<span class="property-value" aria-labelledby="ratio-label"><g:fieldValue bean="${unitOfMeasureInstance}" field="ratio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:unitOfMeasureInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${unitOfMeasureInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
