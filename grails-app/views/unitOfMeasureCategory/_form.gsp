<%@ page import="org.bahmni.referenceData.domain.UnitOfMeasureCategory" %>



<div class="fieldcontain ${hasErrors(bean: unitOfMeasureCategoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="unitOfMeasureCategory.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${unitOfMeasureCategoryInstance?.name}"/>
</div>

