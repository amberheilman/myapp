class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		//"/"(view:"/index")
		"/"(controller: "course", action:"index")
		
		"500"(view:'/error')
	}
}
