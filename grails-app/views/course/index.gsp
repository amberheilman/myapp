<@ page contentType="text/html;charset=UTF-8" >
<@ page contentType="text/html;charset=UTF-8" >
<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
    <head>
        <meta name="layout" content="main"/>
        <r:layoutResources/>
    </head>
    <body>      
	      <header>
	          <h3>Course <small>Assignment List</small></h3>
	      </header>
                    <div>
                        <g:link action="create">
                            Create New Course
                        </g:link>
                        
                    </div>
                    
                    <div>
                        <g:each in="${courseList}" var="p">
 							<li>${p}</li>
						</g:each>
                        </div>
                           
        <g:javascript  library="application"/>
        <r:layoutResources/>
    </body>
</html>