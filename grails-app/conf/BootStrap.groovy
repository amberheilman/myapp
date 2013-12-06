import org.example.Course
import org.example.Assignment

class BootStrap {

    def init = { servletContext ->
		if(!Course.count()){
			def info = new Course(name: "INFO", number: 630, professor: "Glenn Booker").addToAssignments(name: "test1", dueDate: "12/12/12").save()
		}
    }
    def destroy = {
    }
}
