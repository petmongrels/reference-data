<%@ page import="org.bahmni.referenceData.domain.PanelTest" %>



<div class="fieldcontain ${hasErrors(bean: panelTestInstance, field: 'panel', 'error')} required">
	<label for="panel">
		<g:message code="panelTest.panel.label" default="Panel" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="panel" name="panel.id" from="${org.bahmni.referenceData.domain.Panel.list()}" optionKey="id" required="" value="${panelTestInstance?.panel?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: panelTestInstance, field: 'test', 'error')} required">
	<label for="test">
		<g:message code="panelTest.test.label" default="Test" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="test" name="test.id" from="${org.bahmni.referenceData.domain.Test.list()}" optionKey="id" required="" value="${panelTestInstance?.test?.id}" class="many-to-one"/>
</div>

