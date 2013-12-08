import org.example.Course
import org.example.Assignment

class BootStrap {

    def init = { servletContext ->
		if(!Course.count()){
			def info630 = new Course(name: "INFO", section: 630, professor: "Glenn Booker").save(failOnError: true)
			
			info630.addToAssignments(name: "test1", dueDate: "12/12/12", desc: "description is here")
			
		}
    }
    def destroy = {
    }
}
