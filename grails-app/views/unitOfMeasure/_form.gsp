<%@ page import="org.bahmni.referenceData.domain.UnitOfMeasure" %>



<div class="fieldcontain ${hasErrors(bean: unitOfMeasureInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="unitOfMeasure.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${unitOfMeasureInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unitOfMeasureInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="unitOfMeasure.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${unitOfMeasureInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: unitOfMeasureInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="unitOfMeasure.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${org.bahmni.referenceData.domain.UnitOfMeasureCategory.list()}" optionKey="id" required="" value="${unitOfMeasureInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: unitOfMeasureInstance, field: 'ratio', 'error')} required">
	<label for="ratio">
		<g:message code="unitOfMeasure.ratio.label" default="Ratio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ratio" value="${fieldValue(bean: unitOfMeasureInstance, field: 'ratio')}" required=""/>
</div>

