class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/test"(resources:'test')
        "/panel"(resources:'panel')
        "/department"(resources:'department', includes:['uploadCsv', 'csvSave'])
        "/sample"(resources:'sample', includes:['uploadCsv', 'csvSave'])
        "/drug"(resources:'drug')
        "/drug_category"(resources:'drugCategory')
        "/drug_form"(resources:'drugForm')
        "/product_unit_of_measure"(resources:'productUnitOfMeasure')
        "/product_unit_of_measure_category"(resources:'productUnitOfMeasureCategory')
        "/test_unit_of_measure"(resources:'testUnitOfMeasure')

        "/"(view:"/homepage")
        "500"(view:'/error')
	}
}
