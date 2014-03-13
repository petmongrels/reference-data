
<%@ page import="org.bahmni.referenceData.domain.ProductUnitOfMeasureCategory" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'productUnitOfMeasureCategory.label', default: 'ProductUnitOfMeasureCategory')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-productUnitOfMeasureCategory" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-productUnitOfMeasureCategory" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list productUnitOfMeasureCategory">
			
				<g:if test="${productUnitOfMeasureCategoryInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="productUnitOfMeasureCategory.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${productUnitOfMeasureCategoryInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${productUnitOfMeasureCategoryInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="productUnitOfMeasureCategory.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${productUnitOfMeasureCategoryInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${productUnitOfMeasureCategoryInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="productUnitOfMeasureCategory.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${productUnitOfMeasureCategoryInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			%{--<g:form url="[resource:productUnitOfMeasureCategoryInstance, action:'delete']" method="DELETE">--}%
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${productUnitOfMeasureCategoryInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				</fieldset>
			%{--</g:form>--}%
		</div>
	</body>
</html>
