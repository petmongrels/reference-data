class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/tests"(resources:'test')
        "/panels"(resources:'panel')
        "/departments"(resources:'department')
        "/samples"(resources:'sample')

        "/"(view:"/homepage")
        "500"(view:'/error')
	}
}
