
<%@ page import="org.bahmni.referenceData.domain.PanelTest" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'panelTest.label', default: 'PanelTest')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-panelTest" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-panelTest" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list panelTest">
			
				<g:if test="${panelTestInstance?.panel}">
				<li class="fieldcontain">
					<span id="panel-label" class="property-label"><g:message code="panelTest.panel.label" default="Panel" /></span>
					
						<span class="property-value" aria-labelledby="panel-label"><g:link controller="panel" action="show" id="${panelTestInstance?.panel?.id}">${panelTestInstance?.panel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelTestInstance?.test}">
				<li class="fieldcontain">
					<span id="test-label" class="property-label"><g:message code="panelTest.test.label" default="Test" /></span>
					
						<span class="property-value" aria-labelledby="test-label"><g:link controller="test" action="show" id="${panelTestInstance?.test?.id}">${panelTestInstance?.test?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelTestInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="panelTest.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${panelTestInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${panelTestInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="panelTest.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${panelTestInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:panelTestInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${panelTestInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
