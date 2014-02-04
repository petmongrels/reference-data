<%@ page import="org.bahmni.referenceData.domain.ProductUnitOfMeasure" %>



<div class="fieldcontain ${hasErrors(bean: productUnitOfMeasureInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="productUnitOfMeasure.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${productUnitOfMeasureInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productUnitOfMeasureInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="productUnitOfMeasure.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${productUnitOfMeasureInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: productUnitOfMeasureInstance, field: 'category', 'error')} required">
	<label for="category">
		<g:message code="productUnitOfMeasure.category.label" default="Category" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="category" name="category.id" from="${org.bahmni.referenceData.domain.ProductUnitOfMeasureCategory.list()}" optionKey="id" required="" value="${productUnitOfMeasureInstance?.category?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: productUnitOfMeasureInstance, field: 'ratio', 'error')} required">
	<label for="ratio">
		<g:message code="productUnitOfMeasure.ratio.label" default="Ratio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="ratio" value="${fieldValue(bean: productUnitOfMeasureInstance, field: 'ratio')}" required=""/>
</div>

