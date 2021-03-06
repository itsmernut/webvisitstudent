<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>รายชื่อนักเรียน</title>
    <link rel="icon" href="https://www.mx7.com/i/1e9/vluoIf.png">
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- Style CSS-->
    <link href="assets/css/style.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
     <!-- TABLE STYLES-->
    <link href="assets/js/dataTables/dataTables.bootstrap.css" rel="stylesheet" />
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.js"></script>
    <script src="assets/js/morris/example.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.css">
    <link rel="stylesheet" href="assets/js/morris/morris.css">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
	jQuery("document").ready(function($){
      var nav = $('.nav-container');
      var pos = nav.offset().top;
      
      
      $(window).scroll(function () {
        var fix = ($(this).scrollTop() > pos) ? true : false;
        
        nav.toggleClass("fix-nav", fix);
        $('body').toggleClass("fix-body", fix);
 		
            }
                            );
	}
                            );
    </script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand"> <img src="assets/img/logoSchool.png" id="logo" height = "50px"> Damrong</div> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><a href="#" class="btn btn-danger square-btn-adjust">ออกจากระบบ</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
            <div class="nav-container">
                        <div class="nav">
                <nav class="navbar-default navbar-side" role="navigation" >
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <div id="profile">
				<li class="text-center">
                    <img src="assets/img/user-admin.png" class="user-image img-responsive" id="img_p"/>
                    Admin
					</li>
				</div>
					
                    <li>
                        <a href="manageUser.jsp"><i class="glyphicon glyphicon-home fa-2x"></i> หน้าหลัก</a>
                    </li>
                     <li>
                       <a  href="adminProfile.jsp"><i class="glyphicon glyphicon-user fa-2x"></i> ข้อมูลส่วนตัว</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-2x"></i> จัดการข้อมูล<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                           <li>
                                <a href="listTeacher.do">ครู</a>
                            </li>
                            <li>
                                <a href="listLevel.do">นักเรียน</a>
                            </li>
                        </ul>
                               
                    </li>
                    <li  >
                        <a  href="admin_chart.html"><i class="fa fa-bar-chart-o fa-2x"></i> สถิติการเยี่ยม</a>
                    </li>

                        </ul>
                      
                            
            </div>      
        </nav> 
         </div>
            </div>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>จัดการข้อมูลนักเรียน</h2>
                        
                    </div>        
                </div>
                <!--input information-->   
                 <hr />    
                  <div class="row">
                <div class="col-md-12">
                    <!-- Advanced Tables -->
                    <div class="panel panel-default">
                        <div class="panel-heading">
                             <b>รายชื่อนักเรียน</b>
                        </div>
                  
                        <div class="panel-body">
                 
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th><center>การเยี่ยมบ้าน</center></th>
                                            <th><center>รหัสประจำตัว</center></th>
                                            <th><center>รูปภาพ</center></th>
                                            <th><center>ชื่อ-นามสกุล</center></th>
                                            <th><center>อีเมล์</center></th>
                                            <th><center>ดูข้อมูลส่วนตัว</center></th>
                                            
                                            <th><center>ลบ</center></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    	<c:forEach items="${studentList}" var="student">
                                    	
                                        <tr>
                                        <c:choose>
											<c:when test="${student.visited == true}">
												<td><center><img src="assets/img/check.png"></center></td>
											</c:when>
											<c:otherwise>
												<td></td>
											</c:otherwise>
										</c:choose>
                                            <td><center>${student.studentId}</center></td>
                                            <td><img src="${photo}" width="50" height="50" /></td>
                                            <td>${student.firstName}  ${student.lastName}</td>
                                            <td>${student.email}</td>
                                            <td><center><a href="studentProfile.do?id=${student.keyString}"><img src="assets/img/eye-close-up.png"></a></center></td>
                                           
											<td><center><a href="deleteStudent.do?id=${student.keyString}"><img src="assets/img/delete.png"></a></center></td>
											
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                               </div>
                             
                        </div>
                        
                    </div>
                    <!--End Advanced Tables -->
                    <a href="newStudent.do" class="addUser"><img src="assets/img/addUser.png">เพิ่มนักเรียน</a>
                  
				
                </div>
            </div>
            </div>


                
                    </div>            
                </div>
                      
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- DATA TABLE SCRIPTS -->
    <script src="assets/js/dataTables/jquery.dataTables.js"></script>
    <script src="assets/js/dataTables/dataTables.bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $('#dataTables-example').dataTable();
            });
    </script>
         <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
</body>
</html>
