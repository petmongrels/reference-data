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

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="department.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textArea name="description" cols="40" rows="5" required="" value="${departmentInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: departmentInstance, field: 'sortOrder', 'error')} required">
	<label for="sortOrder">
		<g:message code="department.sortOrder.label" default="Sort Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sortOrder" type="number" value="${departmentInstance.sortOrder}" required=""/>
</div>

