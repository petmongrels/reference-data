
<%@ page import="org.bahmni.referenceData.domain.TestUnitOfMeasure" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'testUnitOfMeasure.label', default: 'TestUnitOfMeasure')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-testUnitOfMeasure" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-testUnitOfMeasure" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list testUnitOfMeasure">
			
				<g:if test="${testUnitOfMeasureInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="testUnitOfMeasure.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${testUnitOfMeasureInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${testUnitOfMeasureInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="testUnitOfMeasure.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${testUnitOfMeasureInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${testUnitOfMeasureInstance?.isActive}">
				<li class="fieldcontain">
					<span id="isActive-label" class="property-label"><g:message code="testUnitOfMeasure.isActive.label" default="Is Active" /></span>
					
						<span class="property-value" aria-labelledby="isActive-label"><g:formatBoolean boolean="${testUnitOfMeasureInstance?.isActive}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${testUnitOfMeasureInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="testUnitOfMeasure.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${testUnitOfMeasureInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			%{--<g:form url="[resource:testUnitOfMeasureInstance, action:'delete']" method="DELETE">--}%
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${testUnitOfMeasureInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				</fieldset>
			%{--</g:form>--}%
		</div>
	</body>
</html>
