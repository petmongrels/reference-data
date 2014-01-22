class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/test"(resources:'test')
        "/panel"(resources:'panel')
        "/department"(resources:'department')
        "/sample"(resources:'sample')
        "/drug"(resources:'drug')
        "/drug_category"(resources:'drugCategory')
        "/drug_form"(resources:'drugForm')
        "/unit_of_measure"(resources:'unitOfMeasure')
        "/unit_of_measure_category"(resources:'unitOfMeasureCategory')

        "/"(view:"/homepage")
        "500"(view:'/error')
	}
}
