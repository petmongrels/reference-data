
<%@ page import="org.bahmni.referenceData.domain.ProductUnitOfMeasure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productUnitOfMeasure.label', default: 'ProductUnitOfMeasure')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-productUnitOfMeasure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-productUnitOfMeasure" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productUnitOfMeasure">
			
				<g:if test="${productUnitOfMeasureInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="productUnitOfMeasure.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productUnitOfMeasureInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productUnitOfMeasureInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="productUnitOfMeasure.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${productUnitOfMeasureInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productUnitOfMeasureInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="productUnitOfMeasure.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:link controller="productUnitOfMeasureCategory" action="show" id="${productUnitOfMeasureInstance?.category?.id}">${productUnitOfMeasureInstance?.category?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${productUnitOfMeasureInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="productUnitOfMeasure.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${productUnitOfMeasureInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productUnitOfMeasureInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="productUnitOfMeasure.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${productUnitOfMeasureInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productUnitOfMeasureInstance?.ratio}">
				<li class="fieldcontain">
					<span id="ratio-label" class="property-label"><g:message code="productUnitOfMeasure.ratio.label" default="Ratio" /></span>
					
						<span class="property-value" aria-labelledby="ratio-label"><g:fieldValue bean="${productUnitOfMeasureInstance}" field="ratio"/></span>
					
				</li>
				</g:if>
			
			</ol>
			%{--<g:form url="[resource:productUnitOfMeasureInstance, action:'delete']" method="DELETE">--}%
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productUnitOfMeasureInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				</fieldset>
			%{--</g:form>--}%
		</div>
	</body>
</html>
