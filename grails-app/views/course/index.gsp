<@ page contentType="text/html;charset=UTF-8" >
<@ page contentType="text/html;charset=UTF-8" >
<html xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
    <head>
        <meta name="layout" content="main"/>
        <r:require modules="bootstrap"/>
    </head>
    <body>
        <section>
            <div class="container">
                <div class="row">
                    <header class="page-header">
                        <h3>Course <small class="lead">Assignment List</small></h3>
                    </header>
                    <div class="span3">
                        <g:link class="btn btn-block btn-link" action="create">
                            Create New Course
                        </g:link>
                        <div class="well">
                            <ul class="nav nav-list">
                                <li class="nav-header">Courses</li>
                                <li class="active">
                                    <a id="view-all" href="#">
                                        <i class="icon-chevron-right pull-right"></i>
                                        <b>View All</b>
                                    </a>
                                </li>
                            <g:each in="${ courses }" var="course" status="i">
                                <li>
                                    <a href="#Course-${course.name}">
                                        <i class="icon-chevron-right pull-right"></i>
                                        ${ "${ professor }" }
                                    </a>
                                </li>
                            </g:each>
                            </ul>
                        </div>
                    </div>
                    <div class="span9">
                    <r:layoutResources />
                    <g:each in="${ courses }" var="courses" status="i">
                        <div id="Course-${ course.name }" class="well well-small">
                            <table class="table table-bordered table-striped">
                                <caption>
                                    ${ "${ course.name }" }: List of known assignments
                                </caption>
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Date Due</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <g:each in="${ course.assignments }" var="address">
                                    <tr>
                                        <td>${ assignment.name }</td>
                                        <td>${ assignment.dueDate }</td>
                                        <td><g:link class="btn btn-small btn-inverse" controller="assignment"
                                                    action="edit" id="${assignment.id}">
                                                <i class="icon-edit icon-white"></i>
                                            </g:link>
                                        </td>
                                    </tr>
                                </g:each>
                                </tbody>
                            </table>
                            <div class="btn-group">
                                <g:link class="btn btn-primary" action="edit" id="${course.id}">
                                    <i class="icon-edit icon-white"></i>Edit
                                </g:link>
                            </div>
                        </div>
                    </g:each>
                    </div>
                </div>
            </div>
        </section>
        <g:javascript>
            $('ul.nav > li > a').click(function(e){
                if($(this).attr('id') == "view-all"){
                    $('div[id*="Course-"]').fadeIn('fast');
                }else{
                    var aRef = $(this);
                    var tablesToHide = $('div[id*="Course-"]:visible').length > 1
                            ? $('div[id*="Course-"]:visible') : $($('.nav > li[class="active"] > a').attr('href'));

                    tablesToHide.hide();
                    $(aRef.attr('href')).fadeIn('fast');
                }
                $('.nav > li[class="active"]').removeClass('active');
                $(this).parent().addClass('active');
            });
        </g:javascript>
    </body>
</html>