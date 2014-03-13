
<%@ page import="org.bahmni.referenceData.domain.DrugForm" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drugForm.label', default: 'DrugForm')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-drugForm" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-drugForm" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list drugForm">
			
				<g:if test="${drugFormInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="drugForm.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${drugFormInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugFormInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="drugForm.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${drugFormInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${drugFormInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="drugForm.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${drugFormInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			%{--<g:form url="[resource:drugFormInstance, action:'delete']" method="DELETE">--}%
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${drugFormInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					%{--<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%
				</fieldset>
			%{--</g:form>--}%
		</div>
	</body>
</html>
