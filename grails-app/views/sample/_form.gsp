<%@ page import="org.bahmni.referenceData.domain.Sample" %>



<div class="fieldcontain ${hasErrors(bean: sampleInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="sample.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${sampleInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sampleInstance, field: 'shortName', 'error')} ">
	<label for="shortName">
		<g:message code="sample.shortName.label" default="Short Name" />
		
	</label>
	<g:textField name="shortName" value="${sampleInstance?.shortName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sampleInstance, field: 'sortOrder', 'error')} required">
	<label for="sortOrder">
		<g:message code="sample.sortOrder.label" default="Sort Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sortOrder" type="number" value="${sampleInstance.sortOrder}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: sampleInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="sample.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${sampleInstance?.isActive}" />
</div>

