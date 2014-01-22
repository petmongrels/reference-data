<%@ page import="org.bahmni.referenceData.domain.DrugCategory" %>



<div class="fieldcontain ${hasErrors(bean: drugCategoryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="drugCategory.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${drugCategoryInstance?.name}"/>
</div>

