package org.example

class Course {
	String name
	Integer number
	String professor
	//List<Assignment> Assignments
	
	static hasMany = [assignments: Assignment]
	

    static constraints = {
		name(blank:false)
		number(blank:false)
    }
	
	String toString(){ return "${name} ${number}"}
}
