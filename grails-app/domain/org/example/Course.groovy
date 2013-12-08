package org.example

class Course {
	String name
	Integer section
	String professor
	
	static hasMany = [assignments: Assignment]
	

    static constraints = {
		name(blank:false)
		section(blank:false)
    }
	
	def show() {
		[courses : Course.get(params.id)]
	}
	
	String toString(){ return "${name} ${section}"}
}
