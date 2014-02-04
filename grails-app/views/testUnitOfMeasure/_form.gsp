<%@ page import="org.bahmni.referenceData.domain.TestUnitOfMeasure" %>



<div class="fieldcontain ${hasErrors(bean: testUnitOfMeasureInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="testUnitOfMeasure.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${testUnitOfMeasureInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testUnitOfMeasureInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="testUnitOfMeasure.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${testUnitOfMeasureInstance?.isActive}" />
</div>

