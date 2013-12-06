package org.example

class CourseController {

    def scaffold = Course
	
	def index = {
		def courses = Course.list([sort:"name", order:"asc"])
		return [courses: Course]
	}
}
