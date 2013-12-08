<@ page contentType="text/html;charset=UTF-8" >
<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
    <head>
        <meta name="layout" content="main"/>
        <r:layoutResources/>
    </head>
    <body>      
	      <header>
	      </header>
               <div class="nav">
               		<ul>
                    <li><g:link action="create">Create New Course</g:link></li>
                    <li><g:link action="list"> View Course List </g:link></li>     
                    </ul>    
               </div>
               <div>
	               <h1>My Assignments</h1>
	               <g:each in="${Assignment}">
	               <p>Name:${it.name}</p>
	               <p>Description:${it.desc}</p>
	               <p>Due Date:${it.dueDate}</p>
				   </g:each>
				   
				   <g:each in="${Course}" var="course">
				   ${courses.all }
				   </g:each>
				   ${courses.list() }
				   
               </div>
                    
               <g:javascript library="application"/>
                        
        <r:layoutResources/>
    </body>
</html>