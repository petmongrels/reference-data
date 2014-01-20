<%@ page import="org.bahmni.referenceData.domain.Panel" %>



<div class="fieldcontain ${hasErrors(bean: panelInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="panel.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${panelInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: panelInstance, field: 'shortName', 'error')} required">
	<label for="shortName">
		<g:message code="panel.shortName.label" default="Short Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortName" required="" value="${panelInstance?.shortName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: panelInstance, field: 'sortOrder', 'error')} required">
	<label for="sortOrder">
		<g:message code="panel.sortOrder.label" default="Sort Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sortOrder" type="number" value="${panelInstance.sortOrder}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: panelInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="panel.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${panelInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: panelInstance, field: 'uuid', 'error')} required">
	<label for="uuid">
		<g:message code="panel.uuid.label" default="Uuid" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uuid" maxlength="36" required="" value="${panelInstance?.uuid}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: panelInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="panel.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" value="${panelInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: panelInstance, field: 'salePrice', 'error')} required">
	<label for="salePrice">
		<g:message code="panel.salePrice.label" default="Sale Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salePrice" value="${fieldValue(bean: panelInstance, field: 'salePrice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: panelInstance, field: 'sample', 'error')} required">
	<label for="sample">
		<g:message code="panel.sample.label" default="Sample" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sample" name="sample.id" from="${org.bahmni.referenceData.domain.Sample.list()}" optionKey="id" required="" value="${panelInstance?.sample?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: panelInstance, field: 'tests', 'error')} ">
	<label for="tests">
		<g:message code="panel.tests.label" default="Tests" />
		
	</label>
	<g:select name="tests" from="${org.bahmni.referenceData.domain.Test.list()}" multiple="multiple" optionKey="id" size="5" value="${panelInstance?.tests*.id}" class="many-to-many"/>
</div>

