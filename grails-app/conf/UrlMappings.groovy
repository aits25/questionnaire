class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?" {
			lang = "th"
			constraints {
				// apply constraints here
			}
		}

		"/"(view: "/index")
		"500"(view: '/error')
	}
}
