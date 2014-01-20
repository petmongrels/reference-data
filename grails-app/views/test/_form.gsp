<%@ page import="org.bahmni.referenceData.domain.Test" %>



<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="test.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${testInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'shortName', 'error')} required">
	<label for="shortName">
		<g:message code="test.shortName.label" default="Short Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="shortName" required="" value="${testInstance?.shortName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'salePrice', 'error')} required">
	<label for="salePrice">
		<g:message code="test.salePrice.label" default="Sale Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salePrice" value="${fieldValue(bean: testInstance, field: 'salePrice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="test.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${testInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'uuid', 'error')} required">
	<label for="uuid">
		<g:message code="test.uuid.label" default="Uuid" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="uuid" maxlength="36" required="" value="${testInstance?.uuid}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'department', 'error')} required">
	<label for="department">
		<g:message code="test.department.label" default="Department" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="department" name="department.id" from="${org.bahmni.referenceData.domain.Department.list()}" optionKey="id" required="" value="${testInstance?.department?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'sample', 'error')} required">
	<label for="sample">
		<g:message code="test.sample.label" default="Sample" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sample" name="sample.id" from="${org.bahmni.referenceData.domain.Sample.list()}" optionKey="id" required="" value="${testInstance?.sample?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'sortOrder', 'error')} required">
	<label for="sortOrder">
		<g:message code="test.sortOrder.label" default="Sort Order" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="sortOrder" type="number" value="${testInstance.sortOrder}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="test.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" value="${testInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: testInstance, field: 'panels', 'error')} ">
	<label for="panels">
		<g:message code="test.panels.label" default="Panels" />
		
	</label>
	
</div>

