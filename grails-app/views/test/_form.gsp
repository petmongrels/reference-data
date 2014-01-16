<%@ page import="org.bahmni.referenceData.domain.Test" %>



<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="test.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${testInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'cost', 'error')} required">
	<label for="cost">
		<g:message code="test.cost.label" default="Cost" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="cost" value="${fieldValue(bean: testInstance, field: 'cost')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="test.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="department" name="department.id" from="${org.bahmni.referenceData.domain.Department.list()}" optionKey="id" required="" value="${testInstance?.department?.id}" class="many-to-one"/>
</div>

