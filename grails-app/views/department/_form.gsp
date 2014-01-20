<%@ page import="org.bahmni.referenceData.domain.Department" %>



<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="department.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${departmentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="department.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${departmentInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'uuid', 'error')} required">
	<label for="uuid">
		<g:message code="department.uuid.label" default="Uuid" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uuid" maxlength="36" required="" value="${departmentInstance?.uuid}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="department.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" value="${departmentInstance?.description}"/>
</div>

