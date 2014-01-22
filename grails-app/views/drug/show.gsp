
<%@ page import="org.bahmni.referenceData.domain.Drug" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drug.label', default: 'Drug')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-drug" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-drug" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list drug">
			
				<g:if test="${drugInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="drug.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${drugInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="drug.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${drugInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.salePrice}">
				<li class="fieldcontain">
					<span id="salePrice-label" class="property-label"><g:message code="drug.salePrice.label" default="Sale Price" /></span>
					
						<span class="property-value" aria-labelledby="salePrice-label"><g:fieldValue bean="${drugInstance}" field="salePrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.form}">
				<li class="fieldcontain">
					<span id="form-label" class="property-label"><g:message code="drug.form.label" default="Form" /></span>
					
						<span class="property-value" aria-labelledby="form-label"><g:link controller="drugForm" action="show" id="${drugInstance?.form?.id}">${drugInstance?.form?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.saleUnitOfMeasure}">
				<li class="fieldcontain">
					<span id="saleUnitOfMeasure-label" class="property-label"><g:message code="drug.saleUnitOfMeasure.label" default="Sale Unit Of Measure" /></span>
					
						<span class="property-value" aria-labelledby="saleUnitOfMeasure-label"><g:link controller="unitOfMeasure" action="show" id="${drugInstance?.saleUnitOfMeasure?.id}">${drugInstance?.saleUnitOfMeasure?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.purchaseUnitOfMeasure}">
				<li class="fieldcontain">
					<span id="purchaseUnitOfMeasure-label" class="property-label"><g:message code="drug.purchaseUnitOfMeasure.label" default="Purchase Unit Of Measure" /></span>
					
						<span class="property-value" aria-labelledby="purchaseUnitOfMeasure-label"><g:link controller="unitOfMeasure" action="show" id="${drugInstance?.purchaseUnitOfMeasure?.id}">${drugInstance?.purchaseUnitOfMeasure?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.costPrice}">
				<li class="fieldcontain">
					<span id="costPrice-label" class="property-label"><g:message code="drug.costPrice.label" default="Cost Price" /></span>
					
						<span class="property-value" aria-labelledby="costPrice-label"><g:fieldValue bean="${drugInstance}" field="costPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="drug.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${drugInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.genericName}">
				<li class="fieldcontain">
					<span id="genericName-label" class="property-label"><g:message code="drug.genericName.label" default="Generic Name" /></span>
					
						<span class="property-value" aria-labelledby="genericName-label"><g:fieldValue bean="${drugInstance}" field="genericName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="drug.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${drugInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.manufacturer}">
				<li class="fieldcontain">
					<span id="manufacturer-label" class="property-label"><g:message code="drug.manufacturer.label" default="Manufacturer" /></span>
					
						<span class="property-value" aria-labelledby="manufacturer-label"><g:fieldValue bean="${drugInstance}" field="manufacturer"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.route}">
				<li class="fieldcontain">
					<span id="route-label" class="property-label"><g:message code="drug.route.label" default="Route" /></span>
					
						<span class="property-value" aria-labelledby="route-label"><g:fieldValue bean="${drugInstance}" field="route"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.shortName}">
				<li class="fieldcontain">
					<span id="shortName-label" class="property-label"><g:message code="drug.shortName.label" default="Short Name" /></span>
					
						<span class="property-value" aria-labelledby="shortName-label"><g:fieldValue bean="${drugInstance}" field="shortName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.strength}">
				<li class="fieldcontain">
					<span id="strength-label" class="property-label"><g:message code="drug.strength.label" default="Strength" /></span>
					
						<span class="property-value" aria-labelledby="strength-label"><g:fieldValue bean="${drugInstance}" field="strength"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugInstance?.strengthUnits}">
				<li class="fieldcontain">
					<span id="strengthUnits-label" class="property-label"><g:message code="drug.strengthUnits.label" default="Strength Units" /></span>
					
						<span class="property-value" aria-labelledby="strengthUnits-label"><g:fieldValue bean="${drugInstance}" field="strengthUnits"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:drugInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${drugInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
