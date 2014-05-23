class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/test/uploadCsv"(controller: 'test', action: 'uploadCsv')
        "/test/csvSave"(controller: 'test', action: 'csvSave')
        "/test"(resources:'test')
        "/panel/uploadCsv"(controller: 'panel', action: 'uploadCsv')
        "/panel/csvSave"(controller: 'panel', action: 'csvSave')
        "/panel"(resource: 'panel')
        "/department/uploadCsv"(controller: 'department', action: 'uploadCsv')
        "/department/csvSave"(controller: 'department', action: 'csvSave')
        "/department"(resources:'department')
        "/sample/uploadCsv"(controller: 'sample', action: 'uploadCsv')
        "/sample/csvSave"(controller: 'sample', action: 'csvSave')
        "/sample"(resources:'sample')
        "/drug"(resources:'drug')
        "/drug_category"(resources:'drugCategory')
        "/drug_form"(resources:'drugForm')
        "/product_unit_of_measure"(resources:'productUnitOfMeasure')
        "/product_unit_of_measure_category"(resources:'productUnitOfMeasureCategory')
        "/test_unit_of_measure/uploadCsv"(controller: 'testUnitOfMeasure', action: 'uploadCsv')
        "/test_unit_of_measure/csvSave"(controller: 'testUnitOfMeasure', action: 'csvSave')
        "/test_unit_of_measure"(resources:'testUnitOfMeasure')

        "/"(view:"/homepage")
        "500"(view:'/error')
	}
}
