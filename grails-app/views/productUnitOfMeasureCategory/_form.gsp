<%@ page import="org.bahmni.referenceData.domain.ProductUnitOfMeasureCategory" %>



<div class="fieldcontain ${hasErrors(bean: productUnitOfMeasureCategoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="productUnitOfMeasureCategory.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productUnitOfMeasureCategoryInstance?.name}"/>
</div>

