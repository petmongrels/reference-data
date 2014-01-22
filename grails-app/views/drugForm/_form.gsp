<%@ page import="org.bahmni.referenceData.domain.DrugForm" %>



<div class="fieldcontain ${hasErrors(bean: drugFormInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="drugForm.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${drugFormInstance?.name}"/>
</div>

