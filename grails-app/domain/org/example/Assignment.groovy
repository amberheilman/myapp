package org.example

class Assignment {
	String name
	Date dueDate
	String desc
	
	static belongsTo = [course: Course]

    static constraints = {
    	name(blank:false)
		dueDate(blank:false)
		
	}
}
