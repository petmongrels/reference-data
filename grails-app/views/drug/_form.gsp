<%@ page import="org.bahmni.referenceData.domain.Drug" %>



<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="drug.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${drugInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'isActive', 'error')} ">
	<label for="isActive">
		<g:message code="drug.isActive.label" default="Is Active" />
		
	</label>
	<g:checkBox name="isActive" value="${drugInstance?.isActive}" />
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'salePrice', 'error')} required">
	<label for="salePrice">
		<g:message code="drug.salePrice.label" default="Sale Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salePrice" value="${fieldValue(bean: drugInstance, field: 'salePrice')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'form', 'error')} required">
	<label for="form">
		<g:message code="drug.form.label" default="Form" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="form" name="form.id" from="${org.bahmni.referenceData.domain.DrugForm.list()}" optionKey="id" required="" value="${drugInstance?.form?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'saleUnitOfMeasure', 'error')} required">
	<label for="saleUnitOfMeasure">
		<g:message code="drug.saleUnitOfMeasure.label" default="Sale Unit Of Measure" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="saleUnitOfMeasure" name="saleUnitOfMeasure.id" from="${org.bahmni.referenceData.domain.UnitOfMeasure.list()}" optionKey="id" required="" value="${drugInstance?.saleUnitOfMeasure?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'purchaseUnitOfMeasure', 'error')} required">
	<label for="purchaseUnitOfMeasure">
		<g:message code="drug.purchaseUnitOfMeasure.label" default="Purchase Unit Of Measure" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="purchaseUnitOfMeasure" name="purchaseUnitOfMeasure.id" from="${org.bahmni.referenceData.domain.UnitOfMeasure.list()}" optionKey="id" required="" value="${drugInstance?.purchaseUnitOfMeasure?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'costPrice', 'error')} ">
	<label for="costPrice">
		<g:message code="drug.costPrice.label" default="Cost Price" />
		
	</label>
	<g:field name="costPrice" value="${fieldValue(bean: drugInstance, field: 'costPrice')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'genericName', 'error')} ">
	<label for="genericName">
		<g:message code="drug.genericName.label" default="Generic Name" />
		
	</label>
	<g:textField name="genericName" value="${drugInstance?.genericName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'manufacturer', 'error')} ">
	<label for="manufacturer">
		<g:message code="drug.manufacturer.label" default="Manufacturer" />
		
	</label>
	<g:textField name="manufacturer" value="${drugInstance?.manufacturer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'route', 'error')} ">
	<label for="route">
		<g:message code="drug.route.label" default="Route" />
		
	</label>
	<g:textField name="route" value="${drugInstance?.route}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'shortName', 'error')} ">
	<label for="shortName">
		<g:message code="drug.shortName.label" default="Short Name" />
		
	</label>
	<g:textField name="shortName" value="${drugInstance?.shortName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'strength', 'error')} ">
	<label for="strength">
		<g:message code="drug.strength.label" default="Strength" />
		
	</label>
	<g:field name="strength" value="${fieldValue(bean: drugInstance, field: 'strength')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'strengthUnits', 'error')} ">
	<label for="strengthUnits">
		<g:message code="drug.strengthUnits.label" default="Strength Units" />
		
	</label>
	<g:textField name="strengthUnits" value="${drugInstance?.strengthUnits}"/>
</div>

